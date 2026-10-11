class Afkconvoy < Formula
  desc "Fleet of AFK coding agents that works a GitHub backlog"
  homepage "https://github.com/sunfmin/afkconvoy"
  version "0.1.2"

  depends_on "gh"
  depends_on "git"
  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/afkconvoy/releases/download/v0.1.2/afkconvoy-0.1.2-macos-arm64.tar.gz"
    sha256 "4bb1d6782b1c10689db6b17c5bcd87d2ae486e42c69fb32ea38d29bc12f631b1"
  end
  on_intel do
    url "https://github.com/sunfmin/afkconvoy/releases/download/v0.1.2/afkconvoy-0.1.2-macos-x86_64.tar.gz"
    sha256 "b6a8d02a642378a1ee6b7e6187ed53a7fd86a25f96ec1501ed0e44b147e36178"
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
