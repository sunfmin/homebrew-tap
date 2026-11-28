class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.27/stablehand-0.1.27-macos-universal.tar.gz"
  sha256 "9b7a4668468677d2fa698a14da9c975ceda2fbc28aa2673e3a911e99fc13d994"
  version "0.1.27"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
