class Rolesmith < Formula
  desc "Roles for any coding agent"
  homepage "https://github.com/sunfmin/rolesmith"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/rolesmith-v0.1.22/rolesmith-0.1.22-macos-universal.tar.gz"
  sha256 "cab1778d01af68683a14c0c581309623a9247cab5b9ff4bcf91b261030ec86ca"
  version "0.1.22"
  license "MIT"

  depends_on :macos

  def install
    bin.install "rolesmith"
  end

  test do
    assert_equal "rolesmith #{version}", shell_output("#{bin}/rolesmith --version").strip
  end
end
