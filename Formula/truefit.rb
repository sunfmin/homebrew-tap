class Truefit < Formula
  desc "Keeps a system's tests and models true to the real system"
  homepage "https://github.com/sunfmin/truefit"
  license "MIT"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/truefit-v0.1.9/truefit-0.1.9-macos-universal.tar.gz"
  sha256 "1a76ce3888b993e139e87ab4c2a339502e4e0d5e3f14e6d77bbe8cd4d17a899d"
  version "0.1.9"

  depends_on :macos

  def install
    bin.install "truefit"
  end

  test do
    assert_equal "truefit #{version}", shell_output("#{bin}/truefit --version").strip
  end
end
