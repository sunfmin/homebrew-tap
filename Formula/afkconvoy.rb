class Afkconvoy < Formula
  desc "Fleet of AFK coding agents that works a GitHub backlog"
  homepage "https://github.com/sunfmin/afkconvoy"
  version "0.5.24"

  depends_on "gh"
  depends_on "git"
  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.5.24/afkconvoy-0.5.24-macos-arm64.tar.gz"
    sha256 "55aa22ecad47dc8b59a419a52d9e8f43942c0cb643d1ac260615e6f02b293eb0"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.5.24/afkconvoy-0.5.24-macos-x86_64.tar.gz"
    sha256 "b2792fbca54621fcd1bd16de2a812fb7670ca1629bb4a648adb30d5a9687c90a"
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
