class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.29/stablehand-0.1.29-macos-universal.tar.gz"
  sha256 "8e79d5378474ac28cd9c48db2c21b137f39d9057017716fec5eb6e2c745cac73"
  version "0.1.29"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
