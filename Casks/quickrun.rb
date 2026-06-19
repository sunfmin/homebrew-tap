cask "quickrun" do
  version "0.4.0"
  sha256 "ca7dde3ea7be2bbadfb42a029f1b3a9877391e3a15ff0f280e1f31be71d6135c"

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
