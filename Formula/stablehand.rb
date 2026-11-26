class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.22/stablehand-0.1.22-macos-universal.tar.gz"
  sha256 "37a98a2d5f6bf709774590cfc83e32be594d53da861489ec612af4a5bdbb47a4"
  version "0.1.22"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
