class Truefit < Formula
  desc "Keeps a system's tests and models true to the real system"
  homepage "https://github.com/sunfmin/truefit"
  license "MIT"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/truefit-v0.1.22/truefit-0.1.22-macos-universal.tar.gz"
  sha256 "89bf13b1e6c319bd5ef1b78bf446eb549f9669882b582fed7399d50889c813be"
  version "0.1.22"

  depends_on :macos

  def install
    bin.install "truefit"
  end

  test do
    assert_equal "truefit #{version}", shell_output("#{bin}/truefit --version").strip
  end
end
