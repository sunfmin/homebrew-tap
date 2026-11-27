class Docfit < Formula
  desc "Keeps a repo's documents each in its one home, within its budget"
  homepage "https://github.com/sunfmin/docfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/docfit-v0.1.8/docfit-0.1.8-macos-universal.tar.gz"
  sha256 "9cb178ba17e343ee30986ff6e768acad8b679ccaaafda374ccd0dafb53242298"
  version "0.1.8"

  depends_on :macos

  def install
    bin.install "docfit"
  end

  test do
    assert_equal "docfit #{version}", shell_output("#{bin}/docfit --version").strip
  end
end
