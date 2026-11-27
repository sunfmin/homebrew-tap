class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.29/sesame-0.1.29-macos-universal.tar.gz"
  sha256 "bbd13ea5f513d9ca26ffc85dfe35a59adf595b0d57548f8af3ae8796a04c08e3"
  version "0.1.29"

  depends_on :macos

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
