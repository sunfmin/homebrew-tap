class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.47/sesame-0.1.47-macos-universal.tar.gz"
  sha256 "f7b0629b5f7ed63e517aa1a461788d9f3b1ac70d9b9dda91b297880dda8b29d3"
  version "0.1.47"

  depends_on :macos

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
