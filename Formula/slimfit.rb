class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.9/slimfit-0.1.9-macos-arm64.tar.gz"
  sha256 "e6aead17969e2b3b6f458f98a0b3f3a2fc06b27d0d2dbfbd634a2bb071f8eef4"
  version "0.1.9"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
