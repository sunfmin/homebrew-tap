class Rolesmith < Formula
  desc "Roles for any coding agent"
  homepage "https://github.com/sunfmin/rolesmith"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/rolesmith-v0.1.4/rolesmith-0.1.4-macos-universal.tar.gz"
  sha256 "93423214b81dc3af7fe51c4df20e3aa6170eb322e3c98d67bf03d01704c7d1a0"
  version "0.1.4"
  license "MIT"

  depends_on :macos

  def install
    bin.install "rolesmith"
  end

  test do
    assert_equal "rolesmith #{version}", shell_output("#{bin}/rolesmith --version").strip
  end
end
