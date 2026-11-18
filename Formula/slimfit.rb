class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.3/slimfit-0.1.3-macos-arm64.tar.gz"
  sha256 "eaaae4330e02653b06878295035e8b4ece1e17f5fe85c736bfc55a8f1bd3b72b"
  version "0.1.3"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
