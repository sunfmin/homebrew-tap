class Wxread < Formula
  desc "Agent CLI that reads WeChat for Mac 4.x directly"
  homepage "https://github.com/sunfmin/wxread"
  version "0.1.0"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/wxread/releases/download/v0.1.0/wxread-0.1.0-macos-arm64.tar.gz"
    sha256 "0f1992b1e454bbebc969fc512b323c602d70ce1ee53172f0ba8a553313d8db6d"
  end
  on_intel do
    url "https://github.com/sunfmin/wxread/releases/download/v0.1.0/wxread-0.1.0-macos-x86_64.tar.gz"
    sha256 "66deb65b1e4299f2d8b494e89d60e01bfb7328e9707c71f7c3c4de738a4dd2ee"
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
