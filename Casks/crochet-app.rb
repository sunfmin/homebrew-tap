cask "crochet-app" do
  version "0.1.5"
  sha256 "b61e7327940270534055e1f87418433dfc8e0c68a4dbaeb5a31445842a740d53"

  url "https://github.com/sunfmin/homebrew-tap/releases/download/crochet-v#{version}/crochet-app-#{version}-macos.zip"
  name "crochet"
  desc "Crochet patterns opened, checked, charted and followed along, for people"
  homepage "https://github.com/sunfmin/crochet"

  depends_on macos: ">= :sonoma"

  app "crochet.app"

  # The app is signed ad hoc and not notarized, so Gatekeeper refuses it
  # while the quarantine flag Homebrew sets on every download is on it.
  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/crochet.app"]
  end

  caveats <<~EOS
    #{appdir}/crochet.app is signed ad hoc and not notarized: this cask removes
    its quarantine flag, so it opens as the crochet formula's binary runs, trusted as this tap is.
  EOS
end
