class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.15/slimfit-0.1.15-macos-arm64.tar.gz"
  sha256 "5498267b8f838cdad4e51871e6cfbf6f9754138e3b349b4beef205430e0ac549"
  version "0.1.15"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
