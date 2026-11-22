class Rolesmith < Formula
  desc "Roles for any coding agent"
  homepage "https://github.com/sunfmin/rolesmith"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/rolesmith-v0.1.3/rolesmith-0.1.3-macos-arm64.tar.gz"
  sha256 "addd21fc99a29cd23fa7950a4d554a6b472326af4f9d7a90f7505615390412ae"
  version "0.1.3"
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
