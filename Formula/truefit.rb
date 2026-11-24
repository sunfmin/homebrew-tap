class Truefit < Formula
  desc "Keeps a system's tests and models true to the real system"
  homepage "https://github.com/sunfmin/truefit"
  license "MIT"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/truefit-v0.1.10/truefit-0.1.10-macos-universal.tar.gz"
  sha256 "c28b21b97f3d23993ef9ec3301fb51f941ef6f6a1330f464152c69409032985c"
  version "0.1.10"

  depends_on :macos

  def install
    bin.install "truefit"
  end

  test do
    assert_equal "truefit #{version}", shell_output("#{bin}/truefit --version").strip
  end
end
