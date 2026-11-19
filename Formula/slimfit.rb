class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.21/slimfit-0.1.21-macos-arm64.tar.gz"
  sha256 "01bd7acea433e89a8d73ff13a0e7b2343c52b6d36feafae852e68c963e236aa3"
  version "0.1.21"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
