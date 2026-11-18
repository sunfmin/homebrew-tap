class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.2/slimfit-0.1.2-macos-arm64.tar.gz"
  sha256 "8e9fd60fae35fd234890d2200b469995720db2580753f3c65b959f16f4ae1478"
  version "0.1.2"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
