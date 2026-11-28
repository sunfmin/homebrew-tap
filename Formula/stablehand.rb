class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.30/stablehand-0.1.30-macos-universal.tar.gz"
  sha256 "f4fa51ff124c060cd2256a814c886ca8e599e0f4d91d9281e5f6431a32a4b6cd"
  version "0.1.30"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
