class Rolesmith < Formula
  desc "Roles for any coding agent"
  homepage "https://github.com/sunfmin/rolesmith"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/rolesmith-v0.1.20/rolesmith-0.1.20-macos-universal.tar.gz"
  sha256 "2a9daed5e2bd215e17691fe952a40e3f933a41328332015989651ffda08b20b4"
  version "0.1.20"
  license "MIT"

  depends_on :macos

  def install
    bin.install "rolesmith"
  end

  test do
    assert_equal "rolesmith #{version}", shell_output("#{bin}/rolesmith --version").strip
  end
end
