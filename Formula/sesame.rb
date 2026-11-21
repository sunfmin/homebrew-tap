class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  version "0.1.16"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.16/sesame-0.1.16-macos-arm64.tar.gz"
    sha256 "a40321a635f962c2b87ca2f094624b0e8ce60da6290c1a5540c7d36706e42918"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.16/sesame-0.1.16-macos-x86_64.tar.gz"
    sha256 "60c3ed8441cbe8bc40cce4450a0741858b2ef7679c72d6c279f66be431065f3d"
  end

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
