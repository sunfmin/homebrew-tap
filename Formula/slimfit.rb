class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.49/slimfit-0.1.49-macos-universal.tar.gz"
  sha256 "1d9147fb643cfcbcdd31ac7f73b0237dce0731d6989e1790b064e03935d04a57"
  version "0.1.49"

  depends_on :macos

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
