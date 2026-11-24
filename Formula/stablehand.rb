class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.2/stablehand-0.1.2-macos-universal.tar.gz"
  sha256 "5e56ffe153a118f74a6726443ac95e9bf9e49d0be0f143c9603add29e0023d9e"
  version "0.1.2"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
