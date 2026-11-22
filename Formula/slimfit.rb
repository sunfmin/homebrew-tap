class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.41/slimfit-0.1.41-macos-arm64.tar.gz"
  sha256 "a6f72cad631c1fb079c8bd3a5aae7a72777c9d051d41cd1dd9ea36783f382c55"
  version "0.1.41"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
