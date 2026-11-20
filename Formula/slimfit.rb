class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.28/slimfit-0.1.28-macos-arm64.tar.gz"
  sha256 "124deed6d96f7665b02f9b6b367d8b44e0e685fa01bd92abc5eba1ede49e17a2"
  version "0.1.28"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
