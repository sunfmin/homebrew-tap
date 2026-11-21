class Truefit < Formula
  desc "Keeps a system's tests and models true to the real system"
  homepage "https://github.com/sunfmin/truefit"
  license "MIT"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/truefit-v0.1.4/truefit-0.1.4-macos-arm64.tar.gz"
  sha256 "f0b82a582f7eb32cb02ed5b21aa99be5df7a4b3eddbb45a57231c3fc81e6fa8d"
  version "0.1.4"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "truefit"
  end

  test do
    assert_equal "truefit #{version}", shell_output("#{bin}/truefit --version").strip
  end
end
