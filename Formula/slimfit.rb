class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.51/slimfit-0.1.51-macos-universal.tar.gz"
  sha256 "c62e9e0cabc6bed5001f575e55fe813d5cce309b9357147a5dcceaad4ae3c857"
  version "0.1.51"

  depends_on :macos

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
