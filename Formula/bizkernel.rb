class Bizkernel < Formula
  desc "Business kernel: bk, bk-server and the workers that run on your machine"
  homepage "https://github.com/sunfmin/bizkernel-releases"
  version "0.2.1"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/bizkernel-releases/releases/download/v0.2.1/bizkernel-0.2.1-macos-arm64.tar.gz"
    sha256 "3d64a4f99ee0ea7c025f4d2690ff08d740bbbe230e7f0fd965461f52380052dd"
  end
  on_intel do
    url "https://github.com/sunfmin/bizkernel-releases/releases/download/v0.2.1/bizkernel-0.2.1-macos-x86_64.tar.gz"
    sha256 "342bab3939d246b4ad13816b3682662ea06d6565136f50438d0641afa83b6e90"
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
    assert_equal "bk 0.2.1", shell_output("#{bin}/bk --version").strip
    assert_equal "bk-server 0.2.1", shell_output("#{bin}/bk-server --version").strip
    assert_equal "file-intake 0.2.1", shell_output("#{bin}/file-intake --version").strip
    assert_equal "im-transcribe 0.2.1", shell_output("#{bin}/im-transcribe --version").strip
    assert_equal "report-render 0.1.0", shell_output("#{bin}/report-render --version").strip
    assert_equal "voice-transcode 0.1.0", shell_output("#{bin}/voice-transcode --version").strip
    assert_equal "wechat-intake 0.2.1", shell_output("#{bin}/wechat-intake --version").strip
  end
end
