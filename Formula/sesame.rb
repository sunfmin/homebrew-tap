class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  version "0.1.8"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.8/sesame-0.1.8-macos-arm64.tar.gz"
    sha256 "0bb6458edc715afe97ebb59680909ed5215236b4a39de768c41356bc02a63bec"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.8/sesame-0.1.8-macos-x86_64.tar.gz"
    sha256 "6f3f93a22a26fd5f8f1dc1d8ecf5ea1bcf2ebb8cbcc81bf7921dfc06cd89e709"
  end

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
