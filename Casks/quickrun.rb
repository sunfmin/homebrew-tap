cask "quickrun" do
  version "0.1.0"
  sha256 "6baf2476c7009137b2c7f21b4b330638f5c837f6ddfe2d285a4c5b4b64b0bbb3"

  url "https://github.com/sunfmin/quickrun/releases/download/v#{version}/QuickRun-#{version}.zip"
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
