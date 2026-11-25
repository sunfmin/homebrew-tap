class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.14/stablehand-0.1.14-macos-universal.tar.gz"
  sha256 "63b64c8d018e032632a98d31a28481ab4cfc64aaec030de5da5e1ca7ea6360bb"
  version "0.1.14"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
