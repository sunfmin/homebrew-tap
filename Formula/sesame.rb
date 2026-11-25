class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.24/sesame-0.1.24-macos-universal.tar.gz"
  sha256 "93e94daaf45157a9576e742475d2178915f393dbb3ca324fd252ea426e05895b"
  version "0.1.24"

  depends_on :macos

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
