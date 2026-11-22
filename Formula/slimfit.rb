class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.48/slimfit-0.1.48-macos-universal.tar.gz"
  sha256 "ab6b8abe8cf95b7e21fdd58d8fe9e74e6af4f7a6becd4e9f40d0ee64703f3c39"
  version "0.1.48"

  depends_on :macos

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
