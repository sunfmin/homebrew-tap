class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.10/stablehand-0.1.10-macos-universal.tar.gz"
  sha256 "d6cd410b6cf519ff22574ced2ae5b0e5ce51879c10f5594b9a04e632678c28d1"
  version "0.1.10"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
