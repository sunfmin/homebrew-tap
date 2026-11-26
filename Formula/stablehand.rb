class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.18/stablehand-0.1.18-macos-universal.tar.gz"
  sha256 "2caacb8184265889b50985d60064c39d474486338501cbb2e22631efe1ac200d"
  version "0.1.18"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
