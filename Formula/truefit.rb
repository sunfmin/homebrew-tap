class Truefit < Formula
  desc "Keeps a system's tests and models true to the real system"
  homepage "https://github.com/sunfmin/truefit"
  license "MIT"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/truefit-v0.1.14/truefit-0.1.14-macos-universal.tar.gz"
  sha256 "e8bd36a9ca96017785342b290d6d24c9e4a0f6f9092cd95bb780a1b31107d93d"
  version "0.1.14"

  depends_on :macos

  def install
    bin.install "truefit"
  end

  test do
    assert_equal "truefit #{version}", shell_output("#{bin}/truefit --version").strip
  end
end
