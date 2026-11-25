class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.52/slimfit-0.1.52-macos-universal.tar.gz"
  sha256 "23c148d123e3729ab5c92f0f346717d8e8aca26e8adf0286688d0bb937175e8b"
  version "0.1.52"

  depends_on :macos

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
