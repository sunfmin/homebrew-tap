class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  version "0.1.11"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.11/sesame-0.1.11-macos-arm64.tar.gz"
    sha256 "2b87bc701a2027bb693721d00b042375920ab0f29763d9e940a758543aaa0e80"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.11/sesame-0.1.11-macos-x86_64.tar.gz"
    sha256 "d76071f3815c572fff6fd245d5880d812069206cfeb3c5f280f4236a8c9f14d9"
  end

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
