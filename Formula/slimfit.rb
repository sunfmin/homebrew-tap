class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.56/slimfit-0.1.56-macos-universal.tar.gz"
  sha256 "06be06241c30ff6e77e5dca9a72d2f15d8f7dbf765eb3f5475d800bf3df0cf69"
  version "0.1.56"

  depends_on :macos

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
