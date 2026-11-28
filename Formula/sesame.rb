class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.39/sesame-0.1.39-macos-universal.tar.gz"
  sha256 "6aebda1667549ed01317d36aeeaeafd557d6b439884f6fec6bf10e849ecdcfca"
  version "0.1.39"

  depends_on :macos

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
