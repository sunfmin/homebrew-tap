class Crochet < Formula
  desc "Crochet patterns as text: compiled, checked, and every chart derived from them"
  homepage "https://github.com/sunfmin/crochet"
  version "0.1.2"

  depends_on :macos
  depends_on "ffmpeg"

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/crochet-v0.1.2/crochet-0.1.2-macos-arm64.tar.gz"
    sha256 "a3d2b8d893d56a08f6acf781a875d13add6d1e662949bd3be4dd39a498cc8141"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/crochet-v0.1.2/crochet-0.1.2-macos-x86_64.tar.gz"
    sha256 "2da7a5c2a926834d4aec182a4bb1c2cafc60dd1b8e25dd68cd632161b4cbc519"
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
