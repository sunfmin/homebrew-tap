class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  version "0.1.4"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.4/sesame-0.1.4-macos-arm64.tar.gz"
    sha256 "076e9fe69b5ee8a442db3e826de7acab6d9a5b8c8bcbb3a11b2df88bfa2bf459"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.4/sesame-0.1.4-macos-x86_64.tar.gz"
    sha256 "5423736c8f4886018730383f8546116a2459b33bb2eaca6117d2e80a50a2d5c3"
  end

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
