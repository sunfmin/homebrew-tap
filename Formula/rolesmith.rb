class Rolesmith < Formula
  desc "Roles for any coding agent"
  homepage "https://github.com/sunfmin/rolesmith"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/rolesmith-v0.1.8/rolesmith-0.1.8-macos-universal.tar.gz"
  sha256 "05056fa4bc014b9080ee81a15e263b23e8058adb301c56af1ce6befde3078449"
  version "0.1.8"
  license "MIT"

  depends_on :macos

  def install
    bin.install "rolesmith"
  end

  test do
    assert_equal "rolesmith #{version}", shell_output("#{bin}/rolesmith --version").strip
  end
end
