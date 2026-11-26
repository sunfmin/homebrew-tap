class Docfit < Formula
  desc "Keeps a repo's documents each in its one home, within its budget"
  homepage "https://github.com/sunfmin/docfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/docfit-v0.1.6/docfit-0.1.6-macos-universal.tar.gz"
  sha256 "a7533206dc1fce498b1736001307031b730d26223194d347ea8029db4a5e89a5"
  version "0.1.6"

  depends_on :macos

  def install
    bin.install "docfit"
  end

  test do
    assert_equal "docfit #{version}", shell_output("#{bin}/docfit --version").strip
  end
end
