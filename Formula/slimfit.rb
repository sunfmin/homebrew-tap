class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.36/slimfit-0.1.36-macos-arm64.tar.gz"
  sha256 "f311d678e68bf9f22855b4cc76db1b7b00b32d2105a999e263fed2428e958f8d"
  version "0.1.36"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
