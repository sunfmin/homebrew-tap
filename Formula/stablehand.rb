class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.24/stablehand-0.1.24-macos-universal.tar.gz"
  sha256 "3796902ba2a8535bad18a3010ada0599162a24d52a733e9fb1934c7a2027fc39"
  version "0.1.24"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
