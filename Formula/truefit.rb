class Truefit < Formula
  desc "Keeps a system's tests and models true to the real system"
  homepage "https://github.com/sunfmin/truefit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/truefit-v0.1.3/truefit-0.1.3-macos-arm64.tar.gz"
  sha256 "a8a10613b077e2b1739fcd5c120770d3e050cf62a7c871a2e1fd6bf66c062fdd"
  version "0.1.3"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "truefit"
  end

  test do
    assert_equal "truefit #{version}", shell_output("#{bin}/truefit --version").strip
  end
end
