class Afkconvoy < Formula
  desc "Fleet of AFK coding agents that works a GitHub backlog"
  homepage "https://github.com/sunfmin/afkconvoy"
  version "0.5.67"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.5.67/afkconvoy-0.5.67-macos-arm64.tar.gz"
    sha256 "f7f0aa59a24b792d0d3963e63e2e9f4b83bad1ee29ce0c482973ac2ef55e99df"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.5.67/afkconvoy-0.5.67-macos-x86_64.tar.gz"
    sha256 "6a5760c5f197c76b88aeaa95e29d0965f343fb50a828ff1cfe8394ffc373ec3e"
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
