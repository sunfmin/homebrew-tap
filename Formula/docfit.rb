class Docfit < Formula
  desc "Keeps a repo's documents each in its one home, within its budget"
  homepage "https://github.com/sunfmin/docfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/docfit-v0.1.4/docfit-0.1.4-macos-universal.tar.gz"
  sha256 "5627c04faeb4f67e05585d28d400dbbbd9a52edac30a00fad2cd9d859e999529"
  version "0.1.4"

  depends_on :macos

  def install
    bin.install "docfit"
  end

  test do
    assert_equal "docfit #{version}", shell_output("#{bin}/docfit --version").strip
  end
end
