class Afkconvoy < Formula
  desc "Fleet of AFK coding agents that works a GitHub backlog"
  homepage "https://github.com/sunfmin/afkconvoy"
  version "0.4.1"

  depends_on "gh"
  depends_on "git"
  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.4.1/afkconvoy-0.4.1-macos-arm64.tar.gz"
    sha256 "680b420e742acebbd96abea9f8086a7000467fa02b528892ba23b6ee1b7c93a0"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.4.1/afkconvoy-0.4.1-macos-x86_64.tar.gz"
    sha256 "61397275e56def543cb0bca94f9781bc40546ac3cd4435066925526607cf1095"
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
