class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.54/slimfit-0.1.54-macos-universal.tar.gz"
  sha256 "d83b978cd43848b4d3bd268b439066ce04edb4a8a4d1ba195584610f534682b9"
  version "0.1.54"

  depends_on :macos

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
