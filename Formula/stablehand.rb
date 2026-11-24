class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.3/stablehand-0.1.3-macos-universal.tar.gz"
  sha256 "3cb96457ff8f477acde31d1ac7170accf0485cc166d12c1b12940215fd642be3"
  version "0.1.3"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
