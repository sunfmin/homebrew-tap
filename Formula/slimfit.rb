class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.6/slimfit-0.1.6-macos-arm64.tar.gz"
  sha256 "5fb3a8ef28a9b87ea859807a0478868d4f226aadb0ff1dc19c4942cf3335fe0f"
  version "0.1.6"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
