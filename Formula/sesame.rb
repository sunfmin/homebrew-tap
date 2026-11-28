class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.42/sesame-0.1.42-macos-universal.tar.gz"
  sha256 "622ddd661b08ab06a52a1aa97d2867a95d11e314c26786807e9257adec61b12a"
  version "0.1.42"

  depends_on :macos

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
