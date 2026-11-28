class Truefit < Formula
  desc "Keeps a system's tests and models true to the real system"
  homepage "https://github.com/sunfmin/truefit"
  license "MIT"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/truefit-v0.1.21/truefit-0.1.21-macos-universal.tar.gz"
  sha256 "4ea969d648734dc7d8b9443b07f6efe76eeb131ebf0d7d585eaad92120db57d4"
  version "0.1.21"

  depends_on :macos

  def install
    bin.install "truefit"
  end

  test do
    assert_equal "truefit #{version}", shell_output("#{bin}/truefit --version").strip
  end
end
