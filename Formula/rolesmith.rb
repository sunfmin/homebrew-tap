class Rolesmith < Formula
  desc "Roles for any coding agent"
  homepage "https://github.com/sunfmin/rolesmith"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/rolesmith-v0.1.5/rolesmith-0.1.5-macos-universal.tar.gz"
  sha256 "e48ef2baaf00441b61c404416a02ec0420e88e8298825253ba119525184b858b"
  version "0.1.5"
  license "MIT"

  depends_on :macos

  def install
    bin.install "rolesmith"
  end

  test do
    assert_equal "rolesmith #{version}", shell_output("#{bin}/rolesmith --version").strip
  end
end
