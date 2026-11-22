class Truefit < Formula
  desc "Keeps a system's tests and models true to the real system"
  homepage "https://github.com/sunfmin/truefit"
  license "MIT"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/truefit-v0.1.8/truefit-0.1.8-macos-universal.tar.gz"
  sha256 "451771d88317aae076877978a44e1e8f7d0dacdd034d97b0bcc40df01a2bc981"
  version "0.1.8"

  depends_on :macos

  def install
    bin.install "truefit"
  end

  test do
    assert_equal "truefit #{version}", shell_output("#{bin}/truefit --version").strip
  end
end
