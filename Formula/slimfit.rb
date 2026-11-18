class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.12/slimfit-0.1.12-macos-arm64.tar.gz"
  sha256 "79759e2a4f06bd679839e8ef1129d96b93c0ffeb04ae09c3c851bfc76505d1cc"
  version "0.1.12"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
