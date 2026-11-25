class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.17/stablehand-0.1.17-macos-universal.tar.gz"
  sha256 "fc3a4b2208adf785daec61ddc1980ca4138c208bd41b6357e59cfc705f0de0ce"
  version "0.1.17"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
