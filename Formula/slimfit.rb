class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.45/slimfit-0.1.45-macos-arm64.tar.gz"
  sha256 "e4a00b8738094472bd593c8d913408c07792a46ff33781aab1e3688eed1a353a"
  version "0.1.45"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
