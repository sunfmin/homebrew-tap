class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.31/slimfit-0.1.31-macos-arm64.tar.gz"
  sha256 "1d8b8397ec25fb3f4cffb691d5e433556cc9549594040dd8bc4a265018f92547"
  version "0.1.31"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
