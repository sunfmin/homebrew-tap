class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.61/slimfit-0.1.61-macos-universal.tar.gz"
  sha256 "b9d0eb7d48b7362c638be716c58d726ef2f447f89c3adc298cf67f59cf6de7cc"
  version "0.1.61"

  depends_on :macos

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
