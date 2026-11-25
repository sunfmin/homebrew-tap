class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.26/sesame-0.1.26-macos-universal.tar.gz"
  sha256 "5fc02fb36b4d7e290fd447fd01f534de0b88db37f1ee6e5df6f504e9a6faa8f5"
  version "0.1.26"

  depends_on :macos

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
