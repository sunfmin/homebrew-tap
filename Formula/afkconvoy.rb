class Afkconvoy < Formula
  desc "Fleet of AFK coding agents that works a GitHub backlog"
  homepage "https://github.com/sunfmin/afkconvoy"
  version "0.5.42"

  depends_on "gh"
  depends_on "git"
  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.5.42/afkconvoy-0.5.42-macos-arm64.tar.gz"
    sha256 "9a56fe8e0ff91e8b367e70f82f56342dd33a33fa89e8cac8d0fd326aba18fe1b"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/afkconvoy-v0.5.42/afkconvoy-0.5.42-macos-x86_64.tar.gz"
    sha256 "de8f6a0cb6fe23ba896bf3e10f298eaf6ff396d31b6d9e208a2d3fa8fd512efc"
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
