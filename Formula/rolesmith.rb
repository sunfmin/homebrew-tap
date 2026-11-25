class Rolesmith < Formula
  desc "Roles for any coding agent"
  homepage "https://github.com/sunfmin/rolesmith"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/rolesmith-v0.1.18/rolesmith-0.1.18-macos-universal.tar.gz"
  sha256 "3d6a1d297b00641806a4d356681f6559bcd4528e6e06a85a74fca768ed4805d3"
  version "0.1.18"
  license "MIT"

  depends_on :macos

  def install
    bin.install "rolesmith"
  end

  test do
    assert_equal "rolesmith #{version}", shell_output("#{bin}/rolesmith --version").strip
  end
end
