class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.8/slimfit-0.1.8-macos-arm64.tar.gz"
  sha256 "c48319a02b58876fe979903d89fb18bf5ba5075116b26ea9ead567d7a0956f87"
  version "0.1.8"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
