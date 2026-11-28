class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.37/sesame-0.1.37-macos-universal.tar.gz"
  sha256 "d23f196fd53497e7b46f6f91781059614e16573b80c247b52a320a0923fd4a13"
  version "0.1.37"

  depends_on :macos

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
