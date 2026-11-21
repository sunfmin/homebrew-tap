class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.34/slimfit-0.1.34-macos-arm64.tar.gz"
  sha256 "620bd475f9b6de671d959c9a69f2eff70955f11da95341221047d8c32d090f5a"
  version "0.1.34"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
