class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.14/slimfit-0.1.14-macos-arm64.tar.gz"
  sha256 "701cd1b95379c0b2091605b64509679b7da9d4b36214d7fe39bd533aa816509b"
  version "0.1.14"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
