class Rolesmith < Formula
  desc "Roles for any coding agent"
  homepage "https://github.com/sunfmin/rolesmith"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/rolesmith-v0.1.15/rolesmith-0.1.15-macos-universal.tar.gz"
  sha256 "ceab9e5e5a7deb246df599448feccd4935675f9a5571efbc314ffa225ce4eb31"
  version "0.1.15"
  license "MIT"

  depends_on :macos

  def install
    bin.install "rolesmith"
  end

  test do
    assert_equal "rolesmith #{version}", shell_output("#{bin}/rolesmith --version").strip
  end
end
