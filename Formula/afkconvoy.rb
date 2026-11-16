class Afkconvoy < Formula
  desc "Fleet of AFK coding agents that works a GitHub backlog"
  homepage "https://github.com/sunfmin/afkconvoy"
  version "0.5.103"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.5.103/afkconvoy-0.5.103-macos-arm64.tar.gz"
    sha256 "3e71486a8f11ba17b35c56cbb843a1e5ea6222d1acf35f5ffad077d2e8e386db"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.5.103/afkconvoy-0.5.103-macos-x86_64.tar.gz"
    sha256 "3b2576114ae2f3823f5152b94c4b072a41f8ff3c4633c08e3bf4ede734af218f"
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
