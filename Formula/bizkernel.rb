class Bizkernel < Formula
  desc "Business kernel: bk, bk-server and the workers that run on your machine"
  homepage "https://github.com/sunfmin/bizkernel-releases"
  version "0.2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/bizkernel-releases/releases/download/v0.2.0/bizkernel-0.2.0-macos-arm64.tar.gz"
    sha256 "3a58ac5373886af1334cb0f63bc66f1a8af429d3b022ed2931d79495cbd40951"
  end
  on_intel do
    url "https://github.com/sunfmin/bizkernel-releases/releases/download/v0.2.0/bizkernel-0.2.0-macos-x86_64.tar.gz"
    sha256 "cf7791c8a68cc3d50e9d05145b63f7bd0f1aa8d59aa63698472b0a26f5292b4c"
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
    assert_equal "bk 0.2.0", shell_output("#{bin}/bk --version").strip
    assert_equal "bk-server 0.2.0", shell_output("#{bin}/bk-server --version").strip
    assert_equal "file-intake 0.2.0", shell_output("#{bin}/file-intake --version").strip
    assert_equal "im-transcribe 0.2.0", shell_output("#{bin}/im-transcribe --version").strip
    assert_equal "report-render 0.1.0", shell_output("#{bin}/report-render --version").strip
    assert_equal "voice-transcode 0.1.0", shell_output("#{bin}/voice-transcode --version").strip
    assert_equal "wechat-intake 0.2.0", shell_output("#{bin}/wechat-intake --version").strip
  end
end
