class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.62/slimfit-0.1.62-macos-universal.tar.gz"
  sha256 "48d9b30db1edabc3780e3b23817f029a799d628353a35baa8453ac7aedc0e94d"
  version "0.1.62"

  depends_on :macos

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
