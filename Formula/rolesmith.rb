class Rolesmith < Formula
  desc "Roles for any coding agent"
  homepage "https://github.com/sunfmin/rolesmith"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/rolesmith-v0.1.7/rolesmith-0.1.7-macos-universal.tar.gz"
  sha256 "cb7d57e415bad9715c40b73666059f4dce31ea308512659a8f85e449b3780c3d"
  version "0.1.7"
  license "MIT"

  depends_on :macos

  def install
    bin.install "rolesmith"
  end

  test do
    assert_equal "rolesmith #{version}", shell_output("#{bin}/rolesmith --version").strip
  end
end
