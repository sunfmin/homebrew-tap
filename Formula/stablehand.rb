class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.20/stablehand-0.1.20-macos-universal.tar.gz"
  sha256 "dcf03f1598f1ce51c9fb06713564305375a709ad9e4f9325797999e80d57e264"
  version "0.1.20"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
