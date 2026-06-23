cask "quickrun" do
  version "0.5.4"
  sha256 "89e99c9fa7f7c9431e0c45e6cc3699b3be9c8a1fe1d010cffb74cce5c1c4f8c6"

  url "https://github.com/sunfmin/quickrun/releases/download/v#{version}/QuickRun-#{version}.dmg"
  name "QuickRun"
  desc "Menu-bar dictionary lookup tool with a global hotkey"
  homepage "https://github.com/sunfmin/quickrun"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "QuickRun.app"

  zap trash: "~/Library/Preferences/jp.theplant.quickrun.plist"
end
