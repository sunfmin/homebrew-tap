class Wxread < Formula
  desc "Agent CLI that reads WeChat for Mac 4.x directly"
  homepage "https://github.com/sunfmin/wxread"
  version "0.1.1"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/wxread/releases/download/v0.1.1/wxread-0.1.1-macos-arm64.tar.gz"
    sha256 "8abe6806da707ef8e3122703997404ff5bb876abad8507baa76b5e59ebf22005"
  end
  on_intel do
    url "https://github.com/sunfmin/wxread/releases/download/v0.1.1/wxread-0.1.1-macos-x86_64.tar.gz"
    sha256 "55cc5fc068ff8a8cbb962dcf516f4f71a7e1d84def4a8abbf51415db747e78c4"
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
