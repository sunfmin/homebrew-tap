class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.27/slimfit-0.1.27-macos-arm64.tar.gz"
  sha256 "780875111cec6c0c4c0be0fa3daf597c9e6238c0765a5906bbba4d31df997dec"
  version "0.1.27"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
