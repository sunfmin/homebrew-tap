class Docfit < Formula
  desc "Keeps a repo's documents each in its one home, within its budget"
  homepage "https://github.com/sunfmin/docfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/docfit-v0.1.3/docfit-0.1.3-macos-universal.tar.gz"
  sha256 "da8c7abb0b6b47d969ceed23d98f7f55540dd6693a0e9ae1dfd777325a4a50c9"
  version "0.1.3"

  depends_on :macos

  def install
    bin.install "docfit"
  end

  test do
    assert_equal "docfit #{version}", shell_output("#{bin}/docfit --version").strip
  end
end
