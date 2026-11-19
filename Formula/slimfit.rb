class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.16/slimfit-0.1.16-macos-arm64.tar.gz"
  sha256 "0b49a1ec59307f428a960e36535eaa524ff070f2ad68eb72d7712b08642ff3dd"
  version "0.1.16"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
