class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.28/stablehand-0.1.28-macos-universal.tar.gz"
  sha256 "e6dbe321329fb294064062625e66fcb05fea726cdc5f5f17ffd2cd6516f543fb"
  version "0.1.28"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
