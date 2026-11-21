class Truefit < Formula
  desc "Keeps a system's tests and models true to the real system"
  homepage "https://github.com/sunfmin/truefit"
  license "MIT"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/truefit-v0.1.5/truefit-0.1.5-macos-arm64.tar.gz"
  sha256 "9e423c936b454e9c76ccf5f923b2ef823bcf312c50b882723a88d636d366b506"
  version "0.1.5"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "truefit"
  end

  test do
    assert_equal "truefit #{version}", shell_output("#{bin}/truefit --version").strip
  end
end
