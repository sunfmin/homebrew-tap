class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.28/sesame-0.1.28-macos-universal.tar.gz"
  sha256 "c75480fea5c61efd5b0f4639d42812384b1439477460997493ba35d74430c7d7"
  version "0.1.28"

  depends_on :macos

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
