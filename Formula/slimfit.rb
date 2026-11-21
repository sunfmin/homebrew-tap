class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.33/slimfit-0.1.33-macos-arm64.tar.gz"
  sha256 "131dafed1edbc2d84b72c443232a17268474210d1be96ca6bec35c5eaf8d6d59"
  version "0.1.33"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
