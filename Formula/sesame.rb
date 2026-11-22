class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.21/sesame-0.1.21-macos-universal.tar.gz"
  sha256 "a0e9cc85345f0c37b705172c19c323c9c36bc501c49ece7839909dfb95311e80"
  version "0.1.21"

  depends_on :macos

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
