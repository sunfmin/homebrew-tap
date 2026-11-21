class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  version "0.1.13"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.13/sesame-0.1.13-macos-arm64.tar.gz"
    sha256 "bcd57b9c5d531b7ac3f6565796a4701db1a7cfb86417d9e330d6656f1b50a10a"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.13/sesame-0.1.13-macos-x86_64.tar.gz"
    sha256 "31008ceae85f68f60f0dab94349990f9b7604b36502afd8d1fdd0162de40e586"
  end

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
