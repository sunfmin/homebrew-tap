class Afkconvoy < Formula
  desc "Fleet of AFK coding agents that works a GitHub backlog"
  homepage "https://github.com/sunfmin/afkconvoy"
  version "0.5.80"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.5.80/afkconvoy-0.5.80-macos-arm64.tar.gz"
    sha256 "4aba1c8bfd9780b5ccc463dab73c78e6422a95e567f3a12f3b19826fa170348a"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.5.80/afkconvoy-0.5.80-macos-x86_64.tar.gz"
    sha256 "cafa4b58305bab56e598c6482b74b5ee884b0ad47f3a2ec4ed578afd0edfac6f"
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
