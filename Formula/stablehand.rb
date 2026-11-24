class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.5/stablehand-0.1.5-macos-universal.tar.gz"
  sha256 "c8119db386c01b3f4f5f3e7e720410b5aa52024c870fd03d9aafab7b535b10d7"
  version "0.1.5"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
