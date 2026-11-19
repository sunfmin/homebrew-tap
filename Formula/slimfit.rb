class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.13/slimfit-0.1.13-macos-arm64.tar.gz"
  sha256 "978b881d5f08badf4d08a39e0fb0a9a694422a7b69b32dbe135b8aeee6f5ed34"
  version "0.1.13"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
