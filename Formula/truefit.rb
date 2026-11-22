class Truefit < Formula
  desc "Keeps a system's tests and models true to the real system"
  homepage "https://github.com/sunfmin/truefit"
  license "MIT"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/truefit-v0.1.6/truefit-0.1.6-macos-universal.tar.gz"
  sha256 "430c7d9f0fa1f92c4b2b8fa1256a40c8297ba74982b225045ad41a470ccbdf25"
  version "0.1.6"

  depends_on :macos

  def install
    bin.install "truefit"
  end

  test do
    assert_equal "truefit #{version}", shell_output("#{bin}/truefit --version").strip
  end
end
