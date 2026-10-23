class Bizkernel < Formula
  desc "Business kernel: bk, bk-server and the workers that run on your machine"
  homepage "https://github.com/sunfmin/bizkernel-releases"
  version "0.6.0"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/bizkernel-releases/releases/download/v0.6.0/bizkernel-0.6.0-macos-arm64.tar.gz"
    sha256 "9c3b5bd5deb3752785b1b515085ea582ba9d65902b67d7136ad17b9f42a99a49"
  end
  on_intel do
    url "https://github.com/sunfmin/bizkernel-releases/releases/download/v0.6.0/bizkernel-0.6.0-macos-x86_64.tar.gz"
    sha256 "7fc23cbf91a5114eb728efc3d9aa8848b3cf71956ded8dfb1bfa247ba1d57654"
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
    assert_equal "bk 0.6.0", shell_output("#{bin}/bk --version").strip
    assert_equal "bk-server 0.6.0", shell_output("#{bin}/bk-server --version").strip
    assert_equal "file-intake 0.6.0", shell_output("#{bin}/file-intake --version").strip
    assert_equal "im-transcribe 0.6.0", shell_output("#{bin}/im-transcribe --version").strip
    assert_equal "report-render 0.2.1", shell_output("#{bin}/report-render --version").strip
    assert_equal "voice-transcode 0.2.1", shell_output("#{bin}/voice-transcode --version").strip
    assert_equal "wechat-intake 0.6.0", shell_output("#{bin}/wechat-intake --version").strip
  end
end
