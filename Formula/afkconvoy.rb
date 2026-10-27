class Afkconvoy < Formula
  desc "Fleet of AFK coding agents that works a GitHub backlog"
  homepage "https://github.com/sunfmin/afkconvoy"
  version "0.5.32"

  depends_on "gh"
  depends_on "git"
  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.5.32/afkconvoy-0.5.32-macos-arm64.tar.gz"
    sha256 "8133e9815cc46e2bc3b9d821307e8ecce9a07413e07328905187627c98905edc"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.5.32/afkconvoy-0.5.32-macos-x86_64.tar.gz"
    sha256 "fc41f16a19ab637cb87db237af9054c9d46e9f29bdb13319f12f4c3cd64407b8"
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
