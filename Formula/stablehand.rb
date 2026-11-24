class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.4/stablehand-0.1.4-macos-universal.tar.gz"
  sha256 "ea16c34897cbecd70644c2a188edaf6541693848401f46a6e25070b5cdf65b92"
  version "0.1.4"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
