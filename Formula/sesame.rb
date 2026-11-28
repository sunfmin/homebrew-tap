class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.40/sesame-0.1.40-macos-universal.tar.gz"
  sha256 "514dc0ff984b60ec4fe1657f66c147e27ded92f7907712dd29b93409e57a105c"
  version "0.1.40"

  depends_on :macos

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
