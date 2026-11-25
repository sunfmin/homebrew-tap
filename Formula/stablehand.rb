class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.11/stablehand-0.1.11-macos-universal.tar.gz"
  sha256 "4c9313f19f5d1ba3e6e858431de521daa83e85d5fddedb76b414ca1ca656b6d7"
  version "0.1.11"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
