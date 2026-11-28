class Docfit < Formula
  desc "Keeps a repo's documents each in its one home, within its budget"
  homepage "https://github.com/sunfmin/docfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/docfit-v0.1.10/docfit-0.1.10-macos-universal.tar.gz"
  sha256 "72dddfd074052e57f3455041820843569634c982b8b98c3290195485419b0ab2"
  version "0.1.10"

  depends_on :macos

  def install
    bin.install "docfit"
  end

  test do
    assert_equal "docfit #{version}", shell_output("#{bin}/docfit --version").strip
  end
end
