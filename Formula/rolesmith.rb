class Rolesmith < Formula
  desc "Roles for any coding agent"
  homepage "https://github.com/sunfmin/rolesmith"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/rolesmith-v0.1.9/rolesmith-0.1.9-macos-universal.tar.gz"
  sha256 "e4cba976e02e5a362ca6237e16f7d6a263d76e15c1381bfb1da334297acfa12e"
  version "0.1.9"
  license "MIT"

  depends_on :macos

  def install
    bin.install "rolesmith"
  end

  test do
    assert_equal "rolesmith #{version}", shell_output("#{bin}/rolesmith --version").strip
  end
end
