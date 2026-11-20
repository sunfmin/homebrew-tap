class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.24/slimfit-0.1.24-macos-arm64.tar.gz"
  sha256 "908c58a4f153d6e7b105b288320bfa1ff7a19c20a39ae00760f5711eccbe87d9"
  version "0.1.24"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
