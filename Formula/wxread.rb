class Wxread < Formula
  desc "Agent CLI that reads WeChat for Mac 4.x directly"
  homepage "https://github.com/sunfmin/wxread"
  version "0.1.6"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/wxread/releases/download/v0.1.6/wxread-0.1.6-macos-arm64.tar.gz"
    sha256 "1dfa12817906d9824b002f6de8132614b1c744824945295cbac01323e69923d5"
  end
  on_intel do
    url "https://github.com/sunfmin/wxread/releases/download/v0.1.6/wxread-0.1.6-macos-x86_64.tar.gz"
    sha256 "3219e988e33b9e5127590dcfa8e0320d13ec2119090d0944787115b5a2824591"
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
