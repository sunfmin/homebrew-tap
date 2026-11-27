class Rolesmith < Formula
  desc "Roles for any coding agent"
  homepage "https://github.com/sunfmin/rolesmith"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/rolesmith-v0.1.23/rolesmith-0.1.23-macos-universal.tar.gz"
  sha256 "3df1c59d046bc821ed4b8730441a9bcb03d4c8805a4569c56e0b620f68ddc09b"
  version "0.1.23"
  license "MIT"

  depends_on :macos

  def install
    bin.install "rolesmith"
  end

  test do
    assert_equal "rolesmith #{version}", shell_output("#{bin}/rolesmith --version").strip
  end
end
