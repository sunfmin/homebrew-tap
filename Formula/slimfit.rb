class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.58/slimfit-0.1.58-macos-universal.tar.gz"
  sha256 "c169c386470155ffc993d56f737a7398c7a2fdcd19049048ea60539a7651f5da"
  version "0.1.58"

  depends_on :macos

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
