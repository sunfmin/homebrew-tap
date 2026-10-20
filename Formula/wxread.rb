class Wxread < Formula
  desc "Agent CLI that reads WeChat for Mac 4.x directly"
  homepage "https://github.com/sunfmin/wxread"
  version "0.1.4"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/wxread/releases/download/v0.1.4/wxread-0.1.4-macos-arm64.tar.gz"
    sha256 "698fbef671a1e2805e9105883f3200e8b02ab0103bed82474f30b4fd5102ebf0"
  end
  on_intel do
    url "https://github.com/sunfmin/wxread/releases/download/v0.1.4/wxread-0.1.4-macos-x86_64.tar.gz"
    sha256 "90a68c84b9af41ab81290eb27c73cf8a70b7e72b98a8ea07513e1a1d8a96310d"
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
