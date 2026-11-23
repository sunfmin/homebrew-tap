class Rolesmith < Formula
  desc "Roles for any coding agent"
  homepage "https://github.com/sunfmin/rolesmith"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/rolesmith-v0.1.12/rolesmith-0.1.12-macos-universal.tar.gz"
  sha256 "6ec32c937b76907fc558b53083d9a44177d99aeaceae6711051d9bb0274c9569"
  version "0.1.12"
  license "MIT"

  depends_on :macos

  def install
    bin.install "rolesmith"
  end

  test do
    assert_equal "rolesmith #{version}", shell_output("#{bin}/rolesmith --version").strip
  end
end
