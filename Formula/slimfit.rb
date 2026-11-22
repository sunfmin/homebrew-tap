class Slimfit < Formula
  desc "Keep a codebase small and its tests few, fast and strong"
  homepage "https://github.com/sunfmin/slimfit"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/slimfit-v0.1.50/slimfit-0.1.50-macos-universal.tar.gz"
  sha256 "ef5a50a407ebda823a1b6d09db89063eb4789c1eebd245504b3837c34f7cc0a3"
  version "0.1.50"

  depends_on :macos

  def install
    bin.install "slimfit"
  end

  test do
    assert_equal "slimfit #{version}", shell_output("#{bin}/slimfit --version").strip
  end
end
