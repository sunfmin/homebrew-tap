class Afkconvoy < Formula
  desc "Fleet of AFK coding agents that works a GitHub backlog"
  homepage "https://github.com/sunfmin/afkconvoy"
  version "0.3.1"

  depends_on "gh"
  depends_on "git"
  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.3.1/afkconvoy-0.3.1-macos-arm64.tar.gz"
    sha256 "58d6b5edda68c72bc761156ebe3afadb326ed5bbf5bc3e15e8a71fc4fef6aeaf"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.3.1/afkconvoy-0.3.1-macos-x86_64.tar.gz"
    sha256 "1f8a3f754762e78612699fd9dfd1260e802af5aea3a291807887f0bda4b1829f"
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
