class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  version "0.1.18"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.18/sesame-0.1.18-macos-arm64.tar.gz"
    sha256 "367fc4cd36a46982293a0f725c006a214d65b9c6733a151942f89bca825c8f58"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.18/sesame-0.1.18-macos-x86_64.tar.gz"
    sha256 "7b533ada951b4a74892bb33d8886b5308efb268d7715d307bfbe9bfab3f1fce0"
  end

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
