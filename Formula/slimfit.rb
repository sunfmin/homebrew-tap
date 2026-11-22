class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.42/slimfit-0.1.42-macos-arm64.tar.gz"
  sha256 "a2880c77f6e65e312387d4d5f7405758acaa5b3a41802b9f5d2e85f4dc42bc04"
  version "0.1.42"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
