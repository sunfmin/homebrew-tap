class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.59/slimfit-0.1.59-macos-universal.tar.gz"
  sha256 "e52d7b3e477fe548f2b1549c441a4d08166bae953eb0d7398ec5c0f3233b27cc"
  version "0.1.59"

  depends_on :macos

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
