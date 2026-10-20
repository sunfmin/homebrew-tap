class Bizkernel < Formula
  desc "Business kernel: bk, bk-server and the workers that run on your machine"
  homepage "https://github.com/sunfmin/bizkernel-releases"
  version "0.1.0"

  depends_on :macos

  on_arm do
    url "/bizkernel-0.1.0-macos-arm64.tar.gz"
    sha256 "3b096d6a49257e0a6b9ac23f34132b1e51596e1da8da38c5b710e6423cb38305"
  end
  on_intel do
    url "/bizkernel-0.1.0-macos-x86_64.tar.gz"
    sha256 "f52dbf0da0470a1799ecd91fbf153ae47a3c2a12dd17463c2cef106cd1e42a7e"
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
    assert_equal "bk #{version}", shell_output("#{bin}/bk --version").strip
  end
end
