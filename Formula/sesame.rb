class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  version "0.1.15"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.15/sesame-0.1.15-macos-arm64.tar.gz"
    sha256 "fc0364a5bf380ba3c75d86d66548d233b9cc95b8cc4fe04cae97f5910a7ef4a6"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.15/sesame-0.1.15-macos-x86_64.tar.gz"
    sha256 "0d5c168d6cfccfe657aa7fea638c01c67025052d0d60e22411e8716ed4da9996"
  end

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
