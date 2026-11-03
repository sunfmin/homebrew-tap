class Afkconvoy < Formula
  desc "Fleet of AFK coding agents that works a GitHub backlog"
  homepage "https://github.com/sunfmin/afkconvoy"
  version "0.5.66"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.5.66/afkconvoy-0.5.66-macos-arm64.tar.gz"
    sha256 "3e6aa93321b70c19c0b566248812f48d3d05fe7c50324f14c4202e1d867800b7"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.5.66/afkconvoy-0.5.66-macos-x86_64.tar.gz"
    sha256 "f721c69a1aa9a536e85d345a288b86236f84c9a10d9a4dc9e9898e9ea6706aaf"
  end

  def install
    bin.install "afkconvoy"
  end

  def caveats
    <<~EOS
      afkconvoy starts its workers through orca. Install it by its tap's
      name (the cask Homebrew itself calls orca is another program):
        brew install --cask stablyai/orca/orca
      Have `git` and `gh` on PATH.
      `gh` must be logged in (`gh auth login`).
    EOS
  end

  test do
    assert_equal "afkconvoy #{version}", shell_output("#{bin}/afkconvoy --version").strip
  end
end
