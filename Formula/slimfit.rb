class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.57/slimfit-0.1.57-macos-universal.tar.gz"
  sha256 "e716df3103fd2e055d3b1cfbdc6e8ccc1e082aa852610e067e11e778c571ea5b"
  version "0.1.57"

  depends_on :macos

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
