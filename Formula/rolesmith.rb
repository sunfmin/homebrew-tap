class Rolesmith < Formula
  desc "Roles for any coding agent"
  homepage "https://github.com/sunfmin/rolesmith"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/rolesmith-v0.1.24/rolesmith-0.1.24-macos-universal.tar.gz"
  sha256 "1f09f3446107de3b9c0022eb90045f2c2ffbb958d4f076de6c491e0b813272dd"
  version "0.1.24"
  license "MIT"

  depends_on :macos

  def install
    bin.install "rolesmith"
  end

  test do
    assert_equal "rolesmith #{version}", shell_output("#{bin}/rolesmith --version").strip
  end
end
