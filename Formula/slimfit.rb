class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.30/slimfit-0.1.30-macos-arm64.tar.gz"
  sha256 "bf3599bc728006ff4420bbbc87290b6d2add6aecab6554071a0cc888237ed6db"
  version "0.1.30"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
