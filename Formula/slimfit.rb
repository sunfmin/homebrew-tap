class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.1/slimfit-0.1.1-macos-arm64.tar.gz"
  sha256 "b8f8e61ce17dd83ef3ffdd2d6a14e86fe542d91aa1c4090cf8ab44af1cef9027"
  version "0.1.1"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
