class Crochet < Formula
  desc "Crochet patterns as text: compiled, checked, and every chart derived from them"
  homepage "https://github.com/sunfmin/crochet"
  version "0.1.3"

  depends_on :macos
  depends_on "ffmpeg"

  on_arm do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/crochet-v0.1.3/crochet-0.1.3-macos-arm64.tar.gz"
    sha256 "06a99083d05ec19eb553abc86c4e504e6e7854f5358ac22b5f6fa1ab99e8c43a"
  end
  on_intel do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/crochet-v0.1.3/crochet-0.1.3-macos-x86_64.tar.gz"
    sha256 "8ecde4f95030e4e229c673263a22cbea1151c0c32211ded8f7667a7adb97fb7b"
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
