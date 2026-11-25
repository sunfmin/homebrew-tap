class Truefit < Formula
  desc "Keeps a system's tests and models true to the real system"
  homepage "https://github.com/sunfmin/truefit"
  license "MIT"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/truefit-v0.1.12/truefit-0.1.12-macos-universal.tar.gz"
  sha256 "ffa624b056440a2a7b9ce36b033c8a32cae39c1444a29a9c0b3e3fc22b861813"
  version "0.1.12"

  depends_on :macos

  def install
    bin.install "truefit"
  end

  test do
    assert_equal "truefit #{version}", shell_output("#{bin}/truefit --version").strip
  end
end
