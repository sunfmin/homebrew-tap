class Docfit < Formula
  desc "Keeps a repo's documents each in its one home, within its budget"
  homepage "https://github.com/sunfmin/docfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/docfit-v0.1.7/docfit-0.1.7-macos-universal.tar.gz"
  sha256 "f1909685bf2dee94edf52a4d31f087ee9baa57f12bba0190ec7ac154626081f9"
  version "0.1.7"

  depends_on :macos

  def install
    bin.install "docfit"
  end

  test do
    assert_equal "docfit #{version}", shell_output("#{bin}/docfit --version").strip
  end
end
