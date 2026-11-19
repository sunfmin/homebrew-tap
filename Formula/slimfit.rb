class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.18/slimfit-0.1.18-macos-arm64.tar.gz"
  sha256 "2ec852e44e6f15f604dc8443aaec1a08255316afe1e3e00902e6a4717f7f2370"
  version "0.1.18"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
