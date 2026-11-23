class Rolesmith < Formula
  desc "Roles for any coding agent"
  homepage "https://github.com/sunfmin/rolesmith"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/rolesmith-v0.1.6/rolesmith-0.1.6-macos-universal.tar.gz"
  sha256 "30bb8f56efb8d81a5186527eef312666a19220839b6db859b99cb3a71198d1b7"
  version "0.1.6"
  license "MIT"

  depends_on :macos

  def install
    bin.install "rolesmith"
  end

  test do
    assert_equal "rolesmith #{version}", shell_output("#{bin}/rolesmith --version").strip
  end
end
