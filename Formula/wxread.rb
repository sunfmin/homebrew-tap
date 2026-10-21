class Wxread < Formula
  desc "Agent CLI that reads WeChat for Mac 4.x directly"
  homepage "https://github.com/sunfmin/wxread"
  version "0.1.5"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/wxread/releases/download/v0.1.5/wxread-0.1.5-macos-arm64.tar.gz"
    sha256 "08f32607f3d6618da0481cfc0fbbfffc56450fd93c745c4c3d17bec22e0fcc0f"
  end
  on_intel do
    url "https://github.com/sunfmin/wxread/releases/download/v0.1.5/wxread-0.1.5-macos-x86_64.tar.gz"
    sha256 "e7e89869b838f3b8467958b5566b0eff8daec430e9faf0f866fd373d2e6292d5"
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
