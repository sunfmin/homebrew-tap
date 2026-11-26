class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.19/stablehand-0.1.19-macos-universal.tar.gz"
  sha256 "5580b42d8fa684c1e762338f9eb7015e42a51f7744abfef3ed54b7dc0bd2dfbf"
  version "0.1.19"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
