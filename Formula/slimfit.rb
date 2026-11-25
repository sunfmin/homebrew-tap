class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.55/slimfit-0.1.55-macos-universal.tar.gz"
  sha256 "b5c81ec98803804730d4149e7329c6c00cae10f1e29d5420d5300b23c25804e7"
  version "0.1.55"

  depends_on :macos

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
