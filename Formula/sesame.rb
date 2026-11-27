class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.30/sesame-0.1.30-macos-universal.tar.gz"
  sha256 "29eb7037f6d3c59a44f3fbb2f4be7d5098d110442f5d087b581a6f0e2ec69707"
  version "0.1.30"

  depends_on :macos

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
