class Truefit < Formula
  desc "Keeps a system's tests and models true to the real system"
  homepage "https://github.com/sunfmin/truefit"
  license "MIT"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/truefit-v0.1.11/truefit-0.1.11-macos-universal.tar.gz"
  sha256 "3ba4125e84077af01f8f6a944ed76426a8dc367e30dcd686ecf176899602808b"
  version "0.1.11"

  depends_on :macos

  def install
    bin.install "truefit"
  end

  test do
    assert_equal "truefit #{version}", shell_output("#{bin}/truefit --version").strip
  end
end
