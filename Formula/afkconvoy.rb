class Afkconvoy < Formula
  desc "Fleet of AFK coding agents that works a GitHub backlog"
  homepage "https://github.com/sunfmin/afkconvoy"
  version "0.2.0"

  depends_on "gh"
  depends_on "git"
  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/afkconvoy/releases/download/v0.2.0/afkconvoy-0.2.0-macos-arm64.tar.gz"
    sha256 "4c260f63a6176c584687eaf2331a2374b78cdf090cf0f1578eb71b4d1fa44e12"
  end
  on_intel do
    url "https://github.com/sunfmin/afkconvoy/releases/download/v0.2.0/afkconvoy-0.2.0-macos-x86_64.tar.gz"
    sha256 "6d214b48ce707b51774f4c085c18bd20eda28735fe9a9d77a64882116e436729"
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
