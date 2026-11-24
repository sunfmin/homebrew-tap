class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.1/stablehand-0.1.1-macos-universal.tar.gz"
  sha256 "5fe6346d2a4e612b1ca6f8f2d0592bde15e330dfd485f5e566cac564cdd9a74a"
  version "0.1.1"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
