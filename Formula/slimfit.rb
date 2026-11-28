class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.64/slimfit-0.1.64-macos-universal.tar.gz"
  sha256 "fbb9207ebb9ddc8b0b2e68651500deccee395bc4ee165345ecbf798152282606"
  version "0.1.64"

  depends_on :macos

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
