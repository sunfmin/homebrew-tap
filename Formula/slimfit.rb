class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.20/slimfit-0.1.20-macos-arm64.tar.gz"
  sha256 "8f0d0547fbf0769c537f8a464bdc0a9e369eaf2b3781ff2b4336c28c1f02bf5a"
  version "0.1.20"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
