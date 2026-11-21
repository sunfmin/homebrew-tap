class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.35/slimfit-0.1.35-macos-arm64.tar.gz"
  sha256 "4ef9609b8f5f3ec4166a08a72a0acc48b9f645c04a76a9a5cf836fa56f136192"
  version "0.1.35"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
