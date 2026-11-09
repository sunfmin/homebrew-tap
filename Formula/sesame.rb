class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  version "0.1.0"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.0/sesame-0.1.0-macos-arm64.tar.gz"
    sha256 "fe36a71ac690a19f90532c3c0c88c97a68d4ad373958f257edd8c10d47d330b6"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.0/sesame-0.1.0-macos-x86_64.tar.gz"
    sha256 "cdc4422c46ea967a2a2190b0f95d69d278b7ea5eb8cb747009989d81515a784b"
  end

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
