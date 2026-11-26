class Truefit < Formula
  desc "Keeps a system's tests and models true to the real system"
  homepage "https://github.com/sunfmin/truefit"
  license "MIT"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/truefit-v0.1.15/truefit-0.1.15-macos-universal.tar.gz"
  sha256 "2f2ecabfc37ea9f1c3cdeecf77856bfef2eb3ac67e1377b99c06d2c118db04c2"
  version "0.1.15"

  depends_on :macos

  def install
    bin.install "truefit"
  end

  test do
    assert_equal "truefit #{version}", shell_output("#{bin}/truefit --version").strip
  end
end
