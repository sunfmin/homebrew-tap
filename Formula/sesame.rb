class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  version "0.1.14"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.14/sesame-0.1.14-macos-arm64.tar.gz"
    sha256 "96f9a121635adbfe3f3331b96aa0c2da9e38f6320458885b5e86e6013aac3cd3"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.14/sesame-0.1.14-macos-x86_64.tar.gz"
    sha256 "42b8ef9bd84a0bfcc95bedbf6c72424998f2afedd36af4b44d3c2293bec2bd6b"
  end

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
