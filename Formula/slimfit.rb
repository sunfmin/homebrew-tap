class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.5/slimfit-0.1.5-macos-arm64.tar.gz"
  sha256 "0aad45a0bfaa45c0a37737f5caada55e3f7b8d72e7aa868de7a01fbfc1d44ecf"
  version "0.1.5"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
