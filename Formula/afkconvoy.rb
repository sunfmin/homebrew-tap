class Afkconvoy < Formula
  desc "Fleet of AFK coding agents that works a GitHub backlog"
  homepage "https://github.com/sunfmin/afkconvoy"
  version "0.5.59"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.5.59/afkconvoy-0.5.59-macos-arm64.tar.gz"
    sha256 "55c3395a7c4e89054c325c614bc875e15d3f6512ad58d76328cd7527714f02ce"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.5.59/afkconvoy-0.5.59-macos-x86_64.tar.gz"
    sha256 "c3cbd9beb8835e5254d64a62202154b1eb828860d0d5aec3ee0a05a953d0ddbb"
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
