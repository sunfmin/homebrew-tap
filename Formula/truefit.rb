class Truefit < Formula
  desc "Keeps a system's tests and models true to the real system"
  homepage "https://github.com/sunfmin/truefit"
  license "MIT"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/truefit-v0.1.20/truefit-0.1.20-macos-universal.tar.gz"
  sha256 "d48363d6427a52a841a1fa4a71b3ff408ff7fc0267d7ad9d4eb36d0de0d25ba5"
  version "0.1.20"

  depends_on :macos

  def install
    bin.install "truefit"
  end

  test do
    assert_equal "truefit #{version}", shell_output("#{bin}/truefit --version").strip
  end
end
