class Rolesmith < Formula
  desc "Roles for any coding agent"
  homepage "https://github.com/sunfmin/rolesmith"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/rolesmith-v0.1.16/rolesmith-0.1.16-macos-universal.tar.gz"
  sha256 "046e12e5edac27e5a7dca2506997318b54b00ec760b6888e0a3df3611bcce32f"
  version "0.1.16"
  license "MIT"

  depends_on :macos

  def install
    bin.install "rolesmith"
  end

  test do
    assert_equal "rolesmith #{version}", shell_output("#{bin}/rolesmith --version").strip
  end
end
