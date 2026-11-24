class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.0/stablehand-0.1.0-macos-universal.tar.gz"
  sha256 "309b6f8682c272d9502356501db37246e3dcc3595c1c388df52488eee13bb57f"
  version "0.1.0"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
