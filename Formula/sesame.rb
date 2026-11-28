class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.35/sesame-0.1.35-macos-universal.tar.gz"
  sha256 "4f252f5c24394105bf7471ec66c2a19fbc62d7b3c51a1e55a5535545e0123db5"
  version "0.1.35"

  depends_on :macos

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
