class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.37/slimfit-0.1.37-macos-arm64.tar.gz"
  sha256 "1e7a509090d963ad0c22488c936dc13aab91b52bb56b437f99b4c0315b0321f6"
  version "0.1.37"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
