class Rolesmith < Formula
  desc "Roles for any coding agent"
  homepage "https://github.com/sunfmin/rolesmith"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/rolesmith-v0.1.2/rolesmith-0.1.2-macos-arm64.tar.gz"
  sha256 "912565258deb2a362802c39b7b0249f6b31cf84eaa3b7400fd1bdff88e2d455d"
  version "0.1.2"
  license "MIT"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "rolesmith"
  end

  test do
    assert_equal "rolesmith #{version}", shell_output("#{bin}/rolesmith --version").strip
  end
end
