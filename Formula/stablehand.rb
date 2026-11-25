class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.16/stablehand-0.1.16-macos-universal.tar.gz"
  sha256 "dd33ea372edf4f13dc841aac523abc8ee4820912f2866fa8a08a7700e57f5854"
  version "0.1.16"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
