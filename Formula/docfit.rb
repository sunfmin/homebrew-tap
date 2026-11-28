class Docfit < Formula
  desc "Keeps a repo's documents each in its one home, within its budget"
  homepage "https://github.com/sunfmin/docfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/docfit-v0.1.9/docfit-0.1.9-macos-universal.tar.gz"
  sha256 "d38d18fa042c49780c196add6c96dfc77a6abf6cb4a466ba489e476385c38e12"
  version "0.1.9"

  depends_on :macos

  def install
    bin.install "docfit"
  end

  test do
    assert_equal "docfit #{version}", shell_output("#{bin}/docfit --version").strip
  end
end
