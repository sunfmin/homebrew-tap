class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.20/sesame-0.1.20-macos-universal.tar.gz"
  sha256 "f013eaffd9d2aa6eb33738caf3e81c4b551ee4abae9e3b231c9070c83a8fb56f"
  version "0.1.20"

  depends_on :macos

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
