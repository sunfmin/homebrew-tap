class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.31/sesame-0.1.31-macos-universal.tar.gz"
  sha256 "ca57b3b72f3081376b944d294e10d106dfb0e40c70a5f05a05be5d4460ca8fd6"
  version "0.1.31"

  depends_on :macos

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
