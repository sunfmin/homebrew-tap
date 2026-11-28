class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.44/sesame-0.1.44-macos-universal.tar.gz"
  sha256 "9e49f9586f28b18ff35388f92e6b2ab5a72c5f128ceb43c189f71681d0f16bc7"
  version "0.1.44"

  depends_on :macos

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
