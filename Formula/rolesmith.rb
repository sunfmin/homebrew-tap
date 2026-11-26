class Rolesmith < Formula
  desc "Roles for any coding agent"
  homepage "https://github.com/sunfmin/rolesmith"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/rolesmith-v0.1.21/rolesmith-0.1.21-macos-universal.tar.gz"
  sha256 "31e02b575708d0343bc6956d7a622799aeba02bbf8dfd42ab5cf0040f9b8d500"
  version "0.1.21"
  license "MIT"

  depends_on :macos

  def install
    bin.install "rolesmith"
  end

  test do
    assert_equal "rolesmith #{version}", shell_output("#{bin}/rolesmith --version").strip
  end
end
