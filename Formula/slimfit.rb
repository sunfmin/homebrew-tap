class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.40/slimfit-0.1.40-macos-arm64.tar.gz"
  sha256 "d7c89d00af5d54f10f01cc4542531754ab012d09eef86d012571f5ece5157e46"
  version "0.1.40"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
