class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.6/stablehand-0.1.6-macos-universal.tar.gz"
  sha256 "001f23f3d3b217f23346e313535583c255a83624d85f0d477381c188e03035db"
  version "0.1.6"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
