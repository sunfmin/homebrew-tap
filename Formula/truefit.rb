class Truefit < Formula
  desc "Keeps a system's tests and models true to the real system"
  homepage "https://github.com/sunfmin/truefit"
  license "MIT"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/truefit-v0.1.17/truefit-0.1.17-macos-universal.tar.gz"
  sha256 "0cea3bfe334d85cd7028910b5b4a0b4310e2c5b492a9653eb4383d6354e49944"
  version "0.1.17"

  depends_on :macos

  def install
    bin.install "truefit"
  end

  test do
    assert_equal "truefit #{version}", shell_output("#{bin}/truefit --version").strip
  end
end
