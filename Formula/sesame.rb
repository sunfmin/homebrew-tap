class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  version "0.1.10"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.10/sesame-0.1.10-macos-arm64.tar.gz"
    sha256 "785849b4c07d8d90d3ea737ab2a4bf02b5d00d0e876dff349d85f8fd45cb8419"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.10/sesame-0.1.10-macos-x86_64.tar.gz"
    sha256 "98a495facafa221188e1313c5616e7853dd164230bf32218049b4d6e43bfe157"
  end

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
