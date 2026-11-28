class Sesame < Formula
  desc "Sign in to SaaS APIs from the terminal via OAuth and call their REST APIs"
  homepage "https://github.com/sunfmin/sesame"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/sesame-v0.1.43/sesame-0.1.43-macos-universal.tar.gz"
  sha256 "b5d3f96e0a33f7dfa28030d884bab6fced1f80420723ca3e4db6ed102b4fdf04"
  version "0.1.43"

  depends_on :macos

  def install
    bin.install "sesame"
  end

  test do
    assert_equal "sesame #{version}", shell_output("#{bin}/sesame --version").strip
  end
end
