class Docfit < Formula
  desc "Keeps a repo's documents each in its one home, within its budget"
  homepage "https://github.com/sunfmin/docfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/docfit-v0.1.5/docfit-0.1.5-macos-universal.tar.gz"
  sha256 "106c3c659f4bafc4fa04ddd7918788fd99d60a5f6fa509a520aa71b60f2f3f91"
  version "0.1.5"

  depends_on :macos

  def install
    bin.install "docfit"
  end

  test do
    assert_equal "docfit #{version}", shell_output("#{bin}/docfit --version").strip
  end
end
