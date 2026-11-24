class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.9/stablehand-0.1.9-macos-universal.tar.gz"
  sha256 "f172006b1fb541e342e18eee9cdc67f83eb3d5547fc6da6ee38c3c8f2f7020ce"
  version "0.1.9"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
