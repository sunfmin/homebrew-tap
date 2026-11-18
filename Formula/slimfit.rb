class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.0/slimfit-0.1.0-macos-arm64.tar.gz"
  sha256 "227914b9635e3c8a343c4a2917993bd1f222474dc058fab9026eff9a1f8e9909"
  version "0.1.0"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
