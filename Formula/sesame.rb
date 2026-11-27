class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.33/sesame-0.1.33-macos-universal.tar.gz"
  sha256 "0544596fc9d0150214727219a4c61388bc575daf085c43920bd6505dd5c4f3c9"
  version "0.1.33"

  depends_on :macos

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
