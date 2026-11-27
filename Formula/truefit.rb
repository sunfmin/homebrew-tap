class Truefit < Formula
  desc "Keeps a system's tests and models true to the real system"
  homepage "https://github.com/sunfmin/truefit"
  license "MIT"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/truefit-v0.1.19/truefit-0.1.19-macos-universal.tar.gz"
  sha256 "87b0559d897d9f532bc222dcb50bbde72b2af4a94edf4c9d425bed11fe7b623c"
  version "0.1.19"

  depends_on :macos

  def install
    bin.install "truefit"
  end

  test do
    assert_equal "truefit #{version}", shell_output("#{bin}/truefit --version").strip
  end
end
