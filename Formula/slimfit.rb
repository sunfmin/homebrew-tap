class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.4/slimfit-0.1.4-macos-arm64.tar.gz"
  sha256 "f1b4106db088f4932330b6220ac51f2a8452bf20434f9488ed6a33630d033688"
  version "0.1.4"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
