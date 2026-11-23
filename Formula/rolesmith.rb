class Rolesmith < Formula
  desc "Roles for any coding agent"
  homepage "https://github.com/sunfmin/rolesmith"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/rolesmith-v0.1.10/rolesmith-0.1.10-macos-universal.tar.gz"
  sha256 "5ca1c7f870a8c706e036cbe8e9cb48c01e54aea682d2c06ba7b1e4bf919e8df5"
  version "0.1.10"
  license "MIT"

  depends_on :macos

  def install
    bin.install "rolesmith"
  end

  test do
    assert_equal "rolesmith #{version}", shell_output("#{bin}/rolesmith --version").strip
  end
end
