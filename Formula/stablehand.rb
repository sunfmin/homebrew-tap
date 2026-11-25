class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.12/stablehand-0.1.12-macos-universal.tar.gz"
  sha256 "61adea0717aee92183784b9deb3000360f97155b71b701696087c5028eaa9dc0"
  version "0.1.12"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
