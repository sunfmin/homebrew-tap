class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  version "0.1.5"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.5/sesame-0.1.5-macos-arm64.tar.gz"
    sha256 "a2811c3aa5f0b7457c731a5c7d6cf082518b8f5d6847f9ae4a27781d7478eeb2"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.5/sesame-0.1.5-macos-x86_64.tar.gz"
    sha256 "75003f3bea4cb7b3a98c5188ecf2ee6d22fe27dfaf88941dfb0708bf35d6eb6b"
  end

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
