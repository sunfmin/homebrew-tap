class Afkconvoy < Formula
  desc "Fleet of AFK coding agents that works a GitHub backlog"
  homepage "https://github.com/sunfmin/afkconvoy"
  version "0.5.98"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.5.98/afkconvoy-0.5.98-macos-arm64.tar.gz"
    sha256 "875766a0e9049cf05f11640aed1ee8bf5c0f4bd249e63d0be333348cef0001bf"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.5.98/afkconvoy-0.5.98-macos-x86_64.tar.gz"
    sha256 "e44f7010fb1aeb7ee4bccb27b779c7d6e8db24b3c596f26008028823a6cc434b"
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
