class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.39/slimfit-0.1.39-macos-arm64.tar.gz"
  sha256 "784efb3b945753bd27a4fb91f2b282ba0e80345f6ff2cdaa6ebb377f164b68f9"
  version "0.1.39"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
