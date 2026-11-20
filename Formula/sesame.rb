class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  version "0.1.12"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.12/sesame-0.1.12-macos-arm64.tar.gz"
    sha256 "f264c6e57160a325d4dc4d9417e2055561e7690130225d362bd878198bc88d76"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.12/sesame-0.1.12-macos-x86_64.tar.gz"
    sha256 "19c7e33650fb1dee59f863fa17df5a7c0be76e0968cfaad823c426a2175fb411"
  end

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
