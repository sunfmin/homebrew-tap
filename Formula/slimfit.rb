class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.63/slimfit-0.1.63-macos-universal.tar.gz"
  sha256 "1978cd0875d67cc8d75e034b17d699cbf564785f18db76faefb51333bf11b2c6"
  version "0.1.63"

  depends_on :macos

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
