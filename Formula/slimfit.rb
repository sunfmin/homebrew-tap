class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.17/slimfit-0.1.17-macos-arm64.tar.gz"
  sha256 "b9b4908d53b1ae7c35367484bfe4e366e8500101a1e3837ffd20e96bba0c3b18"
  version "0.1.17"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
