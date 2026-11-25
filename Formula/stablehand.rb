class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.13/stablehand-0.1.13-macos-universal.tar.gz"
  sha256 "5655db57f345156912ea13ea96fa3bc138e70e4037f38514883f182dcc810548"
  version "0.1.13"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
