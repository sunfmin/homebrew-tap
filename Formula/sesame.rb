class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.34/sesame-0.1.34-macos-universal.tar.gz"
  sha256 "44eb456a246f8d58c30d9e848f2b1f268129e46f22196702c87abf24359a178f"
  version "0.1.34"

  depends_on :macos

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
