class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.44/slimfit-0.1.44-macos-arm64.tar.gz"
  sha256 "586b30481ce5bc0ba35e3d7b114a383932850a295c009e6186abafd27945d1ca"
  version "0.1.44"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
