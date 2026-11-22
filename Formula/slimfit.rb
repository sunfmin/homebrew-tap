class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.47/slimfit-0.1.47-macos-universal.tar.gz"
  sha256 "754842dcc1e1daa65d9ac9e91c954471197cf6d130363a0e408627d7c289a47d"
  version "0.1.47"

  depends_on :macos

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
