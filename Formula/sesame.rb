class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  version "0.1.17"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.17/sesame-0.1.17-macos-arm64.tar.gz"
    sha256 "5c4feefb7242875a8eb2ee880e63d7e71626485b279f5e2f0099096394f700e4"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.17/sesame-0.1.17-macos-x86_64.tar.gz"
    sha256 "d8783e7a30a6de507d3dbc96bb1aeae92a8383baf050556864422f8bb16e311e"
  end

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
