class Crochet < Formula
  desc "Crochet patterns as text: compiled, checked, and every chart derived from them"
  homepage "https://github.com/sunfmin/crochet"
  version "0.1.4"

  depends_on :macos
  depends_on "ffmpeg"

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/crochet-v0.1.4/crochet-0.1.4-macos-arm64.tar.gz"
    sha256 "79d3bc3ddcc668f642298c839a1910b68e952a06d4efb44550b15f5a88862b4d"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/crochet-v0.1.4/crochet-0.1.4-macos-x86_64.tar.gz"
    sha256 "4f247422d5682be8778fd18c3af8e38da8be78bdd6068f57b9a39f7c274de4a2"
  end

  def install
    bin.install "crochet"
  end

  def caveats
    <<~EOS
      The crochet app, for people, is the cask crochet-app, of the same version:
        brew install --cask --appdir=~/Applications sunfmin/tap/crochet-app

      `crochet photo` renders through Blender, which Homebrew installs as a cask:
        brew install --cask --appdir=~/Applications blender
    EOS
  end

  test do
    assert_equal "crochet #{version}", shell_output("#{bin}/crochet --version").strip
  end
end
