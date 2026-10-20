class Wxread < Formula
  desc "Agent CLI that reads WeChat for Mac 4.x directly"
  homepage "https://github.com/sunfmin/wxread"
  version "0.1.2"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/wxread/releases/download/v0.1.2/wxread-0.1.2-macos-arm64.tar.gz"
    sha256 "0d3c1299e9a525683aa4300c7bcb26afc8480b9758ec7ec0e3cfb79a24b41cf2"
  end
  on_intel do
    url "https://github.com/sunfmin/wxread/releases/download/v0.1.2/wxread-0.1.2-macos-x86_64.tar.gz"
    sha256 "5a5d06eb1e9b90db698c70b90e663d1fc320afc25e62c8ca1fd3c89e37c57832"
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
