class Truefit < Formula
  desc "Keeps a system's tests and models true to the real system"
  homepage "https://github.com/sunfmin/truefit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/truefit-v0.1.1/truefit-0.1.1-macos-arm64.tar.gz"
  sha256 "f7e8757b8325befe15edf9056d4d87b0d691f7636210055d73b81668da0e39f4"
  version "0.1.1"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "truefit"
  end

  test do
    assert_equal "truefit #{version}", shell_output("#{bin}/truefit --version").strip
  end
end
