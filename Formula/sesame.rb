class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  version "0.1.7"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.7/sesame-0.1.7-macos-arm64.tar.gz"
    sha256 "348814c1a13de55e2fe0f4e05663f8cec772018ca2035294ac62162df5cc3a03"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.7/sesame-0.1.7-macos-x86_64.tar.gz"
    sha256 "f04160aa2f8670aa1c2ddeaf5db454ec680c318e687b9cdec1fd7f9e619f79ed"
  end

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
