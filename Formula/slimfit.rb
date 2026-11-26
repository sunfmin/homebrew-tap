class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.60/slimfit-0.1.60-macos-universal.tar.gz"
  sha256 "ba0de6453a0ec2780e8bf9a264dc50bb0348884d7227890251f012a59ece5c7f"
  version "0.1.60"

  depends_on :macos

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
