class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.38/sesame-0.1.38-macos-universal.tar.gz"
  sha256 "3af0fca0933d02e6e8607e8ec275dbd93d7bed5e0b717d0a24340144ca03e7fd"
  version "0.1.38"

  depends_on :macos

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
