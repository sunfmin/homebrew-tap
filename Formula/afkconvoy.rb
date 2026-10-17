class Afkconvoy < Formula
  desc "Fleet of AFK coding agents that works a GitHub backlog"
  homepage "https://github.com/sunfmin/afkconvoy"
  version "0.4.2"

  depends_on "gh"
  depends_on "git"
  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.4.2/afkconvoy-0.4.2-macos-arm64.tar.gz"
    sha256 "bb075871ec4c4976a17e9ece87cebc0cffe2b869952f1aae954f81a4a3dc415b"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.4.2/afkconvoy-0.4.2-macos-x86_64.tar.gz"
    sha256 "9343f5bb0c0624acc95bc3c8fe70f16eb057d9a33c602e11ebb07c6883bc112b"
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
