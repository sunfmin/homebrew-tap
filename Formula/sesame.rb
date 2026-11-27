class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.32/sesame-0.1.32-macos-universal.tar.gz"
  sha256 "d146f3fadedff154fad38c33212d364e1f58427d4fe1bcbc4602cbf87efe90b3"
  version "0.1.32"

  depends_on :macos

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
