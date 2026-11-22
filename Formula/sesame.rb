class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.19/sesame-0.1.19-macos-universal.tar.gz"
  sha256 "8f3f71caf0ef0f1f04447b99a57ac1a77d5a4a9dd2300b8656129113fb0acfd8"
  version "0.1.19"

  depends_on :macos

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
