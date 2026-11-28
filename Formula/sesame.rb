class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.41/sesame-0.1.41-macos-universal.tar.gz"
  sha256 "4d1246d4690e2148aa3c01267079ce757eb66af315ad168a66188a7124b80fa2"
  version "0.1.41"

  depends_on :macos

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
