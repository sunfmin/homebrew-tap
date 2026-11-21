class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.32/slimfit-0.1.32-macos-arm64.tar.gz"
  sha256 "660da20af06c8d03eddf913e7a967324937d9bdc67bd30ec1b66a9dbcd61af21"
  version "0.1.32"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
