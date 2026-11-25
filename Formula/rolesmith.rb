class Rolesmith < Formula
  desc "Roles for any coding agent"
  homepage "https://github.com/sunfmin/rolesmith"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/rolesmith-v0.1.17/rolesmith-0.1.17-macos-universal.tar.gz"
  sha256 "26c03d439bceefb489dbb44175e08fc8b4faad93fa029fa4795ff26d2e6d2384"
  version "0.1.17"
  license "MIT"

  depends_on :macos

  def install
    bin.install "rolesmith"
  end

  test do
    assert_equal "rolesmith #{version}", shell_output("#{bin}/rolesmith --version").strip
  end
end
