class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.7/slimfit-0.1.7-macos-arm64.tar.gz"
  sha256 "88b5feacce33e5b25abcf300cd3d0601aa7d3524443994137b1a618f7dd85026"
  version "0.1.7"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
