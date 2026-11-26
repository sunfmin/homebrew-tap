class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.21/stablehand-0.1.21-macos-universal.tar.gz"
  sha256 "132de5ef3f02f29e0616084fb3462dd2e5b125a82a4a0164049fcf5deb428d0b"
  version "0.1.21"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
