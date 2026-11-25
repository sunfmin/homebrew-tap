class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.25/sesame-0.1.25-macos-universal.tar.gz"
  sha256 "7bb1d33e8df9127e5699931233e57a6fde68fe389acf36976915b45f81403721"
  version "0.1.25"

  depends_on :macos

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
