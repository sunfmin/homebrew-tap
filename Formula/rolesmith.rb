class Rolesmith < Formula
  desc "Roles for any coding agent"
  homepage "https://github.com/sunfmin/rolesmith"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/rolesmith-v0.1.13/rolesmith-0.1.13-macos-universal.tar.gz"
  sha256 "8a127f476b4f6bb45a1fb7ad1937b069646ce3b1419881ae12d1e5d0c90af464"
  version "0.1.13"
  license "MIT"

  depends_on :macos

  def install
    bin.install "rolesmith"
  end

  test do
    assert_equal "rolesmith #{version}", shell_output("#{bin}/rolesmith --version").strip
  end
end
