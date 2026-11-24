class Rolesmith < Formula
  desc "Roles for any coding agent"
  homepage "https://github.com/sunfmin/rolesmith"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/rolesmith-v0.1.14/rolesmith-0.1.14-macos-universal.tar.gz"
  sha256 "8ecde256cb260200350df5d3c243694ba22c359b0eecd40c4047a1c5bcec08be"
  version "0.1.14"
  license "MIT"

  depends_on :macos

  def install
    bin.install "rolesmith"
  end

  test do
    assert_equal "rolesmith #{version}", shell_output("#{bin}/rolesmith --version").strip
  end
end
