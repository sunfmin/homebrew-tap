class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  version "0.1.1"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.1/sesame-0.1.1-macos-arm64.tar.gz"
    sha256 "632562823e2df0406eded9e9e260593019a4e2fcc7419a1a91c40ff49e135d98"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.1/sesame-0.1.1-macos-x86_64.tar.gz"
    sha256 "ea5d06c3c851aa1fcb0e31ea62ac5e49f7bc0419c435ad3391a9fa2c6d3ce2e8"
  end

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
