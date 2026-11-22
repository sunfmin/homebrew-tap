class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.43/slimfit-0.1.43-macos-arm64.tar.gz"
  sha256 "fd574a631b4e024f510c1817c693ae4bd0d0820a1728ec30d831ac6fe0187ae9"
  version "0.1.43"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
