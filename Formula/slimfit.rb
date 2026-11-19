class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.23/slimfit-0.1.23-macos-arm64.tar.gz"
  sha256 "9fbf0154155e23db0c0dbf16546dfae61f7748fd788fa337e21ee2d2773bb48c"
  version "0.1.23"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
