class Truefit < Formula
  desc "Keeps a system's tests and models true to the real system"
  homepage "https://github.com/sunfmin/truefit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/truefit-v0.1.0/truefit-0.1.0-macos-arm64.tar.gz"
  sha256 "19fc7de424f3d3df0cc8249599a0a7fc53d2201f28b1ae4e1317356633c10a60"
  version "0.1.0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "truefit"
  end

  test do
    assert_equal "truefit #{version}", shell_output("#{bin}/truefit --version").strip
  end
end
