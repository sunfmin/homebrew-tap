class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.19/slimfit-0.1.19-macos-arm64.tar.gz"
  sha256 "d958f5ca1f8ac8bd15097e71ae759a97c53112ee5d80786b9ccc823728df5dd3"
  version "0.1.19"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
