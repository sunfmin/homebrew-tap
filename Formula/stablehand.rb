class Stablehand < Formula
  desc "One home for agent engine accounts: their logins and usage windows"
  homepage "https://github.com/sunfmin/stablehand"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/stablehand-v0.1.25/stablehand-0.1.25-macos-universal.tar.gz"
  sha256 "f295e6cd9e31bac4f72dfe1ce568df652fa40dda94e096fb78d83da7a58d52a9"
  version "0.1.25"

  depends_on :macos

  def install
    bin.install "stablehand"
  end

  test do
    assert_equal "stablehand #{version}", shell_output("#{bin}/stablehand --version").strip
  end
end
