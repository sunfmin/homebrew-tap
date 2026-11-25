class Truefit < Formula
  desc "Keeps a system's tests and models true to the real system"
  homepage "https://github.com/sunfmin/truefit"
  license "MIT"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/truefit-v0.1.13/truefit-0.1.13-macos-universal.tar.gz"
  sha256 "39acaf63f99bf4b67fd159f00e34000eee7ac505c8c7c7a1f9875213845953a9"
  version "0.1.13"

  depends_on :macos

  def install
    bin.install "truefit"
  end

  test do
    assert_equal "truefit #{version}", shell_output("#{bin}/truefit --version").strip
  end
end
