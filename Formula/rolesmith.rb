class Rolesmith < Formula
  desc "Roles for any coding agent"
  homepage "https://github.com/sunfmin/rolesmith"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/rolesmith-v0.1.11/rolesmith-0.1.11-macos-universal.tar.gz"
  sha256 "95d4eab37aeb5ce0b6b995aa003cef55656fd4bd13515773f18feda9e3b7bcbc"
  version "0.1.11"
  license "MIT"

  depends_on :macos

  def install
    bin.install "rolesmith"
  end

  test do
    assert_equal "rolesmith #{version}", shell_output("#{bin}/rolesmith --version").strip
  end
end
