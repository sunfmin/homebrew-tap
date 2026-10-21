class Bizkernel < Formula
  desc "Business kernel: bk, bk-server and the workers that run on your machine"
  homepage "https://github.com/sunfmin/bizkernel-releases"
  version "0.3.0"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/bizkernel-releases/releases/download/v0.3.0/bizkernel-0.3.0-macos-arm64.tar.gz"
    sha256 "81e126454cf8e4f5af7f067a0ee074c84914666a21556b03953418cdd0033526"
  end
  on_intel do
    url "https://github.com/sunfmin/bizkernel-releases/releases/download/v0.3.0/bizkernel-0.3.0-macos-x86_64.tar.gz"
    sha256 "73984dcd7fbc0972fd2d4d40c815205853c8b9657b6a19aec81c4dc36e28190d"
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
    assert_equal "bk 0.3.0", shell_output("#{bin}/bk --version").strip
    assert_equal "bk-server 0.3.0", shell_output("#{bin}/bk-server --version").strip
    assert_equal "file-intake 0.3.0", shell_output("#{bin}/file-intake --version").strip
    assert_equal "im-transcribe 0.3.0", shell_output("#{bin}/im-transcribe --version").strip
    assert_equal "report-render 0.1.0", shell_output("#{bin}/report-render --version").strip
    assert_equal "voice-transcode 0.1.0", shell_output("#{bin}/voice-transcode --version").strip
    assert_equal "wechat-intake 0.3.0", shell_output("#{bin}/wechat-intake --version").strip
  end
end
