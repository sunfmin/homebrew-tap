class Wxread < Formula
  desc "Agent CLI that reads WeChat for Mac 4.x directly"
  homepage "https://github.com/sunfmin/wxread"
  version "0.1.8"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/wxread/releases/download/v0.1.8/wxread-0.1.8-macos-arm64.tar.gz"
    sha256 "de6dfa03132d06e94112e7d76241d82c41cc010d90424690b42fb56c289aaa60"
  end
  on_intel do
    url "https://github.com/sunfmin/wxread/releases/download/v0.1.8/wxread-0.1.8-macos-x86_64.tar.gz"
    sha256 "8bbfca3f7fd2913f9165c86870234a1726c7653df1ffc0a55fb590a81b486283"
  end

  def install
    bin.install "wxread"
  end

  def caveats
    <<~EOS
      wxread reads WeChat's databases with their keys, which only the running
      WeChat holds and only root can read. Homebrew cannot get them: once,
      with WeChat logged in, run
        sudo wxread keys
      and store what it prints (`wxread keys --help` says how, and what to
      do in this release). Then `wxread doctor` names whatever else is
      missing, with its fix.
    EOS
  end

  test do
    assert_equal "wxread #{version}", shell_output("#{bin}/wxread --version").strip
  end
end
