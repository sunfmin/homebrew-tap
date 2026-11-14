class Afkconvoy < Formula
  desc "Fleet of AFK coding agents that works a GitHub backlog"
  homepage "https://github.com/sunfmin/afkconvoy"
  version "0.5.87"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.5.87/afkconvoy-0.5.87-macos-arm64.tar.gz"
    sha256 "896b691523737610e9e555bbeffe133b256215c8580598f971f199e465139894"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.5.87/afkconvoy-0.5.87-macos-x86_64.tar.gz"
    sha256 "4615289bfb97ef431a2f1d257186bec67e9a43c167483f60c81641ae237a01a8"
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
