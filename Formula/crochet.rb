class Crochet < Formula
  desc "Crochet patterns as text: compiled, checked, and every chart derived from them"
  homepage "https://github.com/sunfmin/crochet"
  version "0.1.5"

  depends_on :macos
  depends_on "ffmpeg"

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/crochet-v0.1.5/crochet-0.1.5-macos-arm64.tar.gz"
    sha256 "763fa204a4105a72ab94369b254ec8322af9049190942503884138a1d10d3d55"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/crochet-v0.1.5/crochet-0.1.5-macos-x86_64.tar.gz"
    sha256 "32f4c7b519bbd4c7c84566d9dd6288e2941b7cecf61630b9f8728c35ba9829dd"
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
