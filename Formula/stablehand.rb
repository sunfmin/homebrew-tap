class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.23/stablehand-0.1.23-macos-universal.tar.gz"
  sha256 "5ebc68430491e85b743f6529bdaa940c8f303df9ea3584624b7dea10b8b9ff98"
  version "0.1.23"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
