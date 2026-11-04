class Afkconvoy < Formula
  desc "Fleet of AFK coding agents that works a GitHub backlog"
  homepage "https://github.com/sunfmin/afkconvoy"
  version "0.5.72"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.5.72/afkconvoy-0.5.72-macos-arm64.tar.gz"
    sha256 "3a9c8e689c4eabb85f4e8bdecd1d4eb90a53a06a6ca6aa2cb1627e8ff4eac45e"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.5.72/afkconvoy-0.5.72-macos-x86_64.tar.gz"
    sha256 "3d27df0497e17d85a0402d1d2682b8cff8cfe0e38a7eedaa85a1cd6ee79b6ccc"
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
