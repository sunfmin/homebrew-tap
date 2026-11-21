class Truefit < Formula
  desc "Keeps a system's tests and models true to the real system"
  homepage "https://github.com/sunfmin/truefit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/truefit-v0.1.2/truefit-0.1.2-macos-arm64.tar.gz"
  sha256 "30173b6e4507d1e9cfb30f6f5d2cc7f697200a0ea63710ec1cf5921fb5b54115"
  version "0.1.2"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "truefit"
  end

  test do
    assert_equal "truefit #{version}", shell_output("#{bin}/truefit --version").strip
  end
end
