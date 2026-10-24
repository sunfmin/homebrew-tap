class Wxread < Formula
  desc "Agent CLI that reads WeChat for Mac 4.x directly"
  homepage "https://github.com/sunfmin/wxread"
  version "0.1.7"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/wxread/releases/download/v0.1.7/wxread-0.1.7-macos-arm64.tar.gz"
    sha256 "63c7c938b16f37942ff5d8c0cd630f9778640eb4e84b35e44f846d6f93bf04ea"
  end
  on_intel do
    url "https://github.com/sunfmin/wxread/releases/download/v0.1.7/wxread-0.1.7-macos-x86_64.tar.gz"
    sha256 "b012b941b5da3941095db2a330e8f21594767453bee6651ebb2d3efcc278c4a3"
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
