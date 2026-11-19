class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  version "0.1.6"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.6/sesame-0.1.6-macos-arm64.tar.gz"
    sha256 "cbc4552c5a8e67f514d7caf3211d967fb96df6d4f229650f62ec2c80786139b1"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.6/sesame-0.1.6-macos-x86_64.tar.gz"
    sha256 "36b193b9bf7cc9725f69e3882ba969b9ad38ab6414ad88da549161611ee964d6"
  end

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
