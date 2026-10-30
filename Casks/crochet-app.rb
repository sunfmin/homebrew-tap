cask "crochet-app" do
  version "0.1.4"
  sha256 "a49337ee3f2e95a4e0ad7b7f389a605da92be41dfb5337dce6013ae25256a3fa"

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
