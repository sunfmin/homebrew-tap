class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.22/sesame-0.1.22-macos-universal.tar.gz"
  sha256 "40d8286b204b48a41985181d9065f23e3349b2c098fac24bda6482dc3131dc49"
  version "0.1.22"

  depends_on :macos

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
