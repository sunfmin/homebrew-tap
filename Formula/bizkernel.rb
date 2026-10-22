class Bizkernel < Formula
  desc "Business kernel: bk, bk-server and the workers that run on your machine"
  homepage "https://github.com/sunfmin/bizkernel-releases"
  version "0.5.0"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/bizkernel-releases/releases/download/v0.5.0/bizkernel-0.5.0-macos-arm64.tar.gz"
    sha256 "230e29f3d593fd16f51d14c495891ba2ec0405d9c64f82bd37f80c0796b64e16"
  end
  on_intel do
    url "https://github.com/sunfmin/bizkernel-releases/releases/download/v0.5.0/bizkernel-0.5.0-macos-x86_64.tar.gz"
    sha256 "c5b42287f641fc7f145b27ba8929ac171dceddf76c34c6643f16c62809d1f8cc"
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
    assert_equal "bk 0.5.0", shell_output("#{bin}/bk --version").strip
    assert_equal "bk-server 0.5.0", shell_output("#{bin}/bk-server --version").strip
    assert_equal "file-intake 0.5.0", shell_output("#{bin}/file-intake --version").strip
    assert_equal "im-transcribe 0.5.0", shell_output("#{bin}/im-transcribe --version").strip
    assert_equal "report-render 0.2.0", shell_output("#{bin}/report-render --version").strip
    assert_equal "voice-transcode 0.2.0", shell_output("#{bin}/voice-transcode --version").strip
    assert_equal "wechat-intake 0.5.0", shell_output("#{bin}/wechat-intake --version").strip
  end
end
