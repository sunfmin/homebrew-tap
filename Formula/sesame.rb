class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.46/sesame-0.1.46-macos-universal.tar.gz"
  sha256 "eed8d1ba7092226d3dcf2ab00c2bad2e2d40123dd0e26b678e9fa3dcce104be1"
  version "0.1.46"

  depends_on :macos

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
