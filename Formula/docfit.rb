class Docfit < Formula
  desc "Keeps a repo's documents each in its one home, within its budget"
  homepage "https://github.com/sunfmin/docfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/docfit-v0.1.0/docfit-0.1.0-macos-universal.tar.gz"
  sha256 "9ceca57270a6f82eee7e4d0cb46d90f94d4e123338880c4eebc2be4f22f33df2"
  version "0.1.0"

  depends_on :macos

  def install
    bin.install "docfit"
  end

  test do
    assert_equal "docfit #{version}", shell_output("#{bin}/docfit --version").strip
  end
end
