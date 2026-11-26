class Truefit < Formula
  desc "Keeps a system's tests and models true to the real system"
  homepage "https://github.com/sunfmin/truefit"
  license "MIT"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/truefit-v0.1.18/truefit-0.1.18-macos-universal.tar.gz"
  sha256 "fb346cadb794f38148c53c5857a4c99ab86a111ea175e74e899365f3f860f266"
  version "0.1.18"

  depends_on :macos

  def install
    bin.install "truefit"
  end

  test do
    assert_equal "truefit #{version}", shell_output("#{bin}/truefit --version").strip
  end
end
