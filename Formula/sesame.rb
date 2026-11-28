class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.45/sesame-0.1.45-macos-universal.tar.gz"
  sha256 "626f010445ee470c3b99222c8b2990376ba4f9d87e634d3c7870707b4f9cd89e"
  version "0.1.45"

  depends_on :macos

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
