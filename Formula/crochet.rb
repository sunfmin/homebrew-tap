class Crochet < Formula
  desc "Crochet patterns as text: compiled, checked, and every chart derived from them"
  homepage "https://github.com/sunfmin/crochet"
  version "0.1.1"

  depends_on :macos
  depends_on "ffmpeg"

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/crochet-v0.1.1/crochet-0.1.1-macos-arm64.tar.gz"
    sha256 "41832281f3ed9f1dd41a4d41736d2c3227f8c19099fb9220da7fd7c0b421e205"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/crochet-v0.1.1/crochet-0.1.1-macos-x86_64.tar.gz"
    sha256 "f208ce42cdd07a7a483263467343e151db5dccf414f0c9e830393d1f04a4c93e"
  end

  def install
    bin.install "crochet"
  end

  def caveats
    <<~EOS
      `crochet photo` renders through Blender, which Homebrew installs as a cask:
        brew install --cask --appdir=~/Applications blender
    EOS
  end

  test do
    assert_equal "crochet #{version}", shell_output("#{bin}/crochet --version").strip
  end
end
