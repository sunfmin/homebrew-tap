cask "quickrun" do
  version "0.2.0"
  sha256 "a850c2933cf659039baf419256c4f6e64de0f9d143f5e3b2189c44c7879d66b7"

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
