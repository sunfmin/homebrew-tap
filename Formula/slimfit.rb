class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.38/slimfit-0.1.38-macos-arm64.tar.gz"
  sha256 "06068a6da9957ffe9bf4178e850614fda74ed70ccf0ebc1569ff172216bdb6eb"
  version "0.1.38"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
