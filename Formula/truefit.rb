class Truefit < Formula
  desc "Keeps a system's tests and models true to the real system"
  homepage "https://github.com/sunfmin/truefit"
  license "MIT"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/truefit-v0.1.7/truefit-0.1.7-macos-universal.tar.gz"
  sha256 "d20a9a595b39b966da15c8b844472feadfaf8ab2e3ab173d65e162c4c8826ff4"
  version "0.1.7"

  depends_on :macos

  def install
    bin.install "truefit"
  end

  test do
    assert_equal "truefit #{version}", shell_output("#{bin}/truefit --version").strip
  end
end
