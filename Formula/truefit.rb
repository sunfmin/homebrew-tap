class Truefit < Formula
  desc "Keeps a system's tests and models true to the real system"
  homepage "https://github.com/sunfmin/truefit"
  license "MIT"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/truefit-v0.1.16/truefit-0.1.16-macos-universal.tar.gz"
  sha256 "994203a6963968975159b44acf5439d494f55e7f622fda17df4a4f8a82bce8cd"
  version "0.1.16"

  depends_on :macos

  def install
    bin.install "truefit"
  end

  test do
    assert_equal "truefit #{version}", shell_output("#{bin}/truefit --version").strip
  end
end
