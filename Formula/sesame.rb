class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  version "0.1.3"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.3/sesame-0.1.3-macos-arm64.tar.gz"
    sha256 "fa9f80b5877a0872ab747e73b8bdbab3e3c39819d124edb18a831470801f0e4d"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.3/sesame-0.1.3-macos-x86_64.tar.gz"
    sha256 "60736259e161bf6852710583a8f84380d75888407444cf6e21280890b5a62c27"
  end

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
