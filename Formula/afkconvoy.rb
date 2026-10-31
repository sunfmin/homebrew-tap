class Afkconvoy < Formula
  desc "Fleet of AFK coding agents that works a GitHub backlog"
  homepage "https://github.com/sunfmin/afkconvoy"
  version "0.5.50"

  depends_on "gh"
  depends_on "git"
  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.5.50/afkconvoy-0.5.50-macos-arm64.tar.gz"
    sha256 "ae194531ebb2b4d317bb608e55a749eb084070338b63e24c5c4ee1457af6bca5"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.5.50/afkconvoy-0.5.50-macos-x86_64.tar.gz"
    sha256 "b5eb65d8729d94c8818d4a5156530a90085082f759b398a8ebdaee5ebf7e09f8"
  end

  def install
    bin.install "afkconvoy"
  end

  def caveats
    <<~EOS
      afkconvoy starts its workers through orca. Install it by its tap's
      name (the cask Homebrew itself calls orca is another program):
        brew install --cask stablyai/orca/orca
      `gh` must be logged in (`gh auth login`).
    EOS
  end

  test do
    assert_equal "afkconvoy #{version}", shell_output("#{bin}/afkconvoy --version").strip
  end
end
