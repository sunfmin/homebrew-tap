class Bizkernel < Formula
  desc "Business kernel: bk, bk-server and the workers that run on your machine"
  homepage "https://github.com/sunfmin/bizkernel-releases"
  version "0.6.3"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/bizkernel-releases/releases/download/v0.6.3/bizkernel-0.6.3-macos-arm64.tar.gz"
    sha256 "98b61b81b75301354242e068430df56cb80642eec876a0e98eee081f12194ba4"
  end
  on_intel do
    url "https://github.com/sunfmin/bizkernel-releases/releases/download/v0.6.3/bizkernel-0.6.3-macos-x86_64.tar.gz"
    sha256 "ebfe65eda0b4f9b1374c7c3064ef4d79fe76b121696c5c62ed8f8c001755c01a"
  end

  def install
    bin.install "bk", "bk-server", "file-intake", "im-transcribe", "report-render", "voice-transcode", "wechat-intake"
  end

  def caveats
    <<~EOS
      Modules and hosted workers are not installed here: each is released
      by its own version, and bk installs it into a kernel by name
      (bk catalog lists them).
      The workers that run on this machine (file-intake, im-transcribe, report-render, voice-transcode, wechat-intake) each need
      what `bk catalog <name>` lists under "machine", which Homebrew
      does not install.
    EOS
  end

  test do
    assert_equal "bk 0.6.3", shell_output("#{bin}/bk --version").strip
    assert_equal "bk-server 0.6.3", shell_output("#{bin}/bk-server --version").strip
    assert_equal "file-intake 0.6.3", shell_output("#{bin}/file-intake --version").strip
    assert_equal "im-transcribe 0.6.3", shell_output("#{bin}/im-transcribe --version").strip
    assert_equal "report-render 0.2.2", shell_output("#{bin}/report-render --version").strip
    assert_equal "voice-transcode 0.2.2", shell_output("#{bin}/voice-transcode --version").strip
    assert_equal "wechat-intake 0.6.3", shell_output("#{bin}/wechat-intake --version").strip
  end
end
