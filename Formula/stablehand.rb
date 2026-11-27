class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.26/stablehand-0.1.26-macos-universal.tar.gz"
  sha256 "e289f0f8e6ae2119eeffdf4e1fecb8b297bfed06121314b44593a84295e35c0b"
  version "0.1.26"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
