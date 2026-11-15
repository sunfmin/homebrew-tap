class Afkconvoy < Formula
  desc "Fleet of AFK coding agents that works a GitHub backlog"
  homepage "https://github.com/sunfmin/afkconvoy"
  version "0.5.95"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.5.95/afkconvoy-0.5.95-macos-arm64.tar.gz"
    sha256 "22ff365aeaca2c5e711388680d11cb0cffaac2f633a805636716ab74ee2ed00c"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.5.95/afkconvoy-0.5.95-macos-x86_64.tar.gz"
    sha256 "a2faeb9d605e4ed28f064edb20341be278588765e84d9c4bddd18c17329605b2"
  end

  def install
    bin.install "afkconvoy"
  end

  def caveats
    <<~EOS
      afkconvoy starts its workers through orca. Install it by its tap's
      name (the cask Homebrew itself calls orca is another program):
        brew install --cask stablyai/orca/orca
      or connect to this host from Orca over SSH: its CLI, at
      ~/.orca/cli/bin/orca, is found with no orca on PATH.
      Have `git` and `gh` on PATH.
      `gh` must be logged in (`gh auth login`).
    EOS
  end

  test do
    assert_equal "afkconvoy #{version}", shell_output("#{bin}/afkconvoy --version").strip
  end
end
