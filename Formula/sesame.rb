class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  version "0.1.2"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.2/sesame-0.1.2-macos-arm64.tar.gz"
    sha256 "2a61addbdff711c62b89ab73d67bceed59796022f2da3ef8b2f34dd938dad822"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.2/sesame-0.1.2-macos-x86_64.tar.gz"
    sha256 "c188b319f865b72a39a7b11560a15b54573fee10dc6ad3b1e8de7402f2d675d7"
  end

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
