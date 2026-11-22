# The tap's release workflow

`release.yml` is the one place in sunfmin's tools that signs a release: the
Developer ID identity and the App Store Connect key are secrets of this repo
only (a personal account has no account-wide secrets). A tool repo builds; this
workflow signs, notarizes and publishes. First used by slimfit (sunfmin/slimfit
ADR 0013), after sunfmin/mytokens ADR-0017.

## The contract

1. **The tool repo builds.** A public repo `sunfmin/<repo>` has
   `packaging/release.sh build <vX.Y.Z> <outdir>`. It builds
   `aarch64-apple-darwin` and `x86_64-apple-darwin` with the tag's version
   stamped, `lipo -create`s them, and leaves in `<outdir>`:
   - the universal binaries, each of which `--version` says the tag's version;
   - the formula `<repo>.rb`, with `url "@URL@"` and `sha256 "@SHA256@"` for
     this workflow to fill in, and no `depends_on arch`.

   It signs nothing and needs no secret. The tool's own cut and its gate's dry
   run use the same `build`, so the gate checks the build that is released.
2. **This tap signs and publishes.** `release.yml`, run by `workflow_dispatch`
   with inputs `repo` and `tag` (its run is named `<repo> <tag>`), on a
   GitHub-hosted macOS runner:
   - checks out `sunfmin/<repo>` at `refs/tags/<tag>` (public: no token) and
     runs its `packaging/release.sh build`;
   - imports `DEVELOPER_ID_P12_BASE64` / `DEVELOPER_ID_P12_PASSWORD` into a
     keychain of its own under `RUNNER_TEMP`;
   - signs every Mach-O file the build left: `codesign --sign "Developer ID
     Application: FENGMIN SUN (HL27PWAKDF)" --options runtime --timestamp`;
   - notarizes them: `xcrun notarytool submit <zip> --wait` with `ASC_KEY_ID` /
     `ASC_ISSUER_ID` / `ASC_KEY_P8_BASE64`, the `.p8` written mode 600 under
     `RUNNER_TEMP`;
   - verifies: `lipo -archs` is `x86_64 arm64`, `codesign --verify --strict`
     passes, `codesign -dv` shows the Developer ID authority and
     `flags=0x10000(runtime)`, and the notary status is `Accepted`;
   - removes the keychain and the key in an `if: always()` step;
   - packages `<repo>-<X.Y.Z>-macos-universal.tar.gz`, creates (or clobbers the
     asset of) the release `<repo>-v<X.Y.Z>`, fills in the formula's url and
     sha256, and commits `Formula/<repo>.rb`, all with this repo's own
     `GITHUB_TOKEN`.
3. **The tool's cut.** `packaging/release.sh cut <vX.Y.Z>`:
   - builds once on the host (a tag goes out only on a commit that builds);
   - pushes the tag to origin;
   - `gh workflow run release.yml -R sunfmin/homebrew-tap -f repo=<repo> -f tag=<tag>`;
   - finds that run (the newest named `<repo> <tag>`, newer than any before the
     dispatch) and waits for it, bounded; when it fails, fails and prints
     `gh run view <id> -R sunfmin/homebrew-tap --log-failed`.

   It publishes nothing from the host, and holds no secret and no tap token.
   factorium tags the cut's HEAD itself after the cut's steps and fails on a tag
   origin already has, so a cut takes away the tag it pushed when it ends. See
   slimfit's `packaging/release.sh` for one that does all of this.

## Adding a tool

Give the tool a `packaging/release.sh build` as above and a cut that runs this
workflow; nothing changes here. Its formula in `Formula/<repo>.rb` is replaced
by the first run.

## When the certificate is renewed

The Developer ID Application certificate expires 2027-02-01. Export the new one
with its private key as a `.p12` and replace `DEVELOPER_ID_P12_BASE64` and
`DEVELOPER_ID_P12_PASSWORD` here; nothing else changes.
