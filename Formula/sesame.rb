class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  version "0.1.9"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.9/sesame-0.1.9-macos-arm64.tar.gz"
    sha256 "cc120e11b94ae6f36b1345056772db65723eff0c98c9c6bbc4977e9af9be3fca"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.9/sesame-0.1.9-macos-x86_64.tar.gz"
    sha256 "2bbea6eb3893a36cbd265fa57dcd8d63e0f4334ca95a702a902a22e67032deb0"
  end

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
