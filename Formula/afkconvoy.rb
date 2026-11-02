class Afkconvoy < Formula
  desc "Fleet of AFK coding agents that works a GitHub backlog"
  homepage "https://github.com/sunfmin/afkconvoy"
  version "0.5.56"

  depends_on "gh"
  depends_on "git"
  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.5.56/afkconvoy-0.5.56-macos-arm64.tar.gz"
    sha256 "5fa17dbe5bb9b62ed31f5c92478cb17c7069d450a7a71ab05fa18dcc5ce6b978"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.5.56/afkconvoy-0.5.56-macos-x86_64.tar.gz"
    sha256 "1c94183ae70d7c0ad25079be05ea4c8cca6fefefb8157625689fa6b000367dd3"
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
