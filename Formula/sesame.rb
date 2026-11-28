class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.36/sesame-0.1.36-macos-universal.tar.gz"
  sha256 "ba3d99eef98ae3a8e8d7fe5814462f1bf42ccda76c1b832a788d6f0fcb8a95b0"
  version "0.1.36"

  depends_on :macos

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
