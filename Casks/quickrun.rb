cask "quickrun" do
  version "0.5.2"
  sha256 "da0e01e6ff2d0ff37fd9376075bb25426567e0b0a275d32728b60b7e874b6436"

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
