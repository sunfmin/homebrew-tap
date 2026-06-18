cask "quickrun" do
  version "0.3.0"
  sha256 "b08765ec863b8bc23b3d82945e71dd9d02bed2b50a3922cb02b162b352142a90"

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
