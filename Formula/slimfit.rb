class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.29/slimfit-0.1.29-macos-arm64.tar.gz"
  sha256 "8b88c1a7fa95956c9c2035293a0a99f449f90c49ceb2803190e2e214fb8f1566"
  version "0.1.29"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
