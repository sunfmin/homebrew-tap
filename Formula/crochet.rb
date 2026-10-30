class Crochet < Formula
  desc "Crochet patterns as text: compiled, checked, and every chart derived from them"
  homepage "https://github.com/sunfmin/crochet"
  version "0.1.0"

  depends_on :macos
  depends_on "ffmpeg"

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/crochet-v0.1.0/crochet-0.1.0-macos-arm64.tar.gz"
    sha256 "6e572808791f16478fa8962a89bccfed65f03bb826e05f52284f7dabbf83b9a5"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/crochet-v0.1.0/crochet-0.1.0-macos-x86_64.tar.gz"
    sha256 "4fe9d0e51a8669fb3513f4fd63c4104ada409b1470d1e4e1af2bf86070bf845a"
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
