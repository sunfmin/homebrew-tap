class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.15/stablehand-0.1.15-macos-universal.tar.gz"
  sha256 "bda33ac77ee79ae0a31cc4a4b34a19cb8585767ca1455ca778e4db562cb3a06d"
  version "0.1.15"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
