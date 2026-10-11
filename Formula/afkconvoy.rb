class Afkconvoy < Formula
  desc "Fleet of AFK coding agents that works a GitHub backlog"
  homepage "https://github.com/sunfmin/afkconvoy"
  version "0.1.1"

  depends_on "gh"
  depends_on "git"
  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/afkconvoy/releases/download/v0.1.1/afkconvoy-0.1.1-macos-arm64.tar.gz"
    sha256 "956e9112277c84c76670bc656e3f7b7d6d726be08609d25c449d75d98b076295"
  end
  on_intel do
    url "https://github.com/sunfmin/afkconvoy/releases/download/v0.1.1/afkconvoy-0.1.1-macos-x86_64.tar.gz"
    sha256 "8d33eea43db8a0fa52cf0bc60d74a9cf7be337ab6163b7b571d783fcb265b81d"
  end

  def install
    bin.install "afkconvoy"
  end

  def caveats
    <<~EOS
      afkconvoy starts its workers through orca, which Homebrew does not
      install: get it from https://github.com/stablyai/orca and make sure
      `orca` is on your PATH. `gh` must be logged in (`gh auth login`).
    EOS
  end

  test do
    assert_equal "afkconvoy #{version}", shell_output("#{bin}/afkconvoy --version").strip
  end
end
