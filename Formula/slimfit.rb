class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.11/slimfit-0.1.11-macos-arm64.tar.gz"
  sha256 "21378d19bb83f9ca827af2f6dff77cc17a016416cc2fb506dba50ad11a0bdb63"
  version "0.1.11"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
