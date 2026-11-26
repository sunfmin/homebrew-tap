class Rolesmith < Formula
  desc "Roles for any coding agent"
  homepage "https://github.com/sunfmin/rolesmith"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/rolesmith-v0.1.19/rolesmith-0.1.19-macos-universal.tar.gz"
  sha256 "78effb1da1459b3661afcf17ecd7478c527703d6b919acf25137839050580b48"
  version "0.1.19"
  license "MIT"

  depends_on :macos

  def install
    bin.install "rolesmith"
  end

  test do
    assert_equal "rolesmith #{version}", shell_output("#{bin}/rolesmith --version").strip
  end
end
