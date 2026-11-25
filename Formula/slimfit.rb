class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.53/slimfit-0.1.53-macos-universal.tar.gz"
  sha256 "826ea7af0151b3e1b33fd94d4d63ffe985b2b5ce7fb19aa241a75fc503bb7753"
  version "0.1.53"

  depends_on :macos

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
