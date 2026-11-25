class Docfit < Formula
  desc "Keeps a repo's documents each in its one home, within its budget"
  homepage "https://github.com/sunfmin/docfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/docfit-v0.1.2/docfit-0.1.2-macos-universal.tar.gz"
  sha256 "73614ab7d95b6faece2efe66ef53fef88023e07d09e798dd34b2de91b3f3c848"
  version "0.1.2"

  depends_on :macos

  def install
    bin.install "docfit"
  end

  test do
    assert_equal "docfit #{version}", shell_output("#{bin}/docfit --version").strip
  end
end
