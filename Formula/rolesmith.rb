class Rolesmith < Formula
  desc "Roles for any coding agent"
  homepage "https://github.com/sunfmin/rolesmith"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/rolesmith-v0.1.1/rolesmith-0.1.1-macos-arm64.tar.gz"
  sha256 "e62764ddeff407209fbd9757646a4f8cb4460473948111b6fdb3fb3a21bdea99"
  version "0.1.1"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "rolesmith"
  end

  test do
    assert_equal "rolesmith #{version}", shell_output("#{bin}/rolesmith --version").strip
  end
end
