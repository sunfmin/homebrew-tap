class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.7/stablehand-0.1.7-macos-universal.tar.gz"
  sha256 "85cc4460d6fc5cd1fbce9c170876e5d585ee75e31b21d06ad257f0136b4ab25d"
  version "0.1.7"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
