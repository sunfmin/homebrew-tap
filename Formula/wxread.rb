class Wxread < Formula
  desc "Agent CLI that reads WeChat for Mac 4.x directly"
  homepage "https://github.com/sunfmin/wxread"
  version "0.1.3"
  license "Apache-2.0"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/wxread/releases/download/v0.1.3/wxread-0.1.3-macos-arm64.tar.gz"
    sha256 "b9261624c7198d16665517169bb9868be4b6b7aca15697a273bb01c03d6c5cbb"
  end
  on_intel do
    url "https://github.com/sunfmin/wxread/releases/download/v0.1.3/wxread-0.1.3-macos-x86_64.tar.gz"
    sha256 "2055d9892c4c6aec950faacbd6897da1a4ce7399c7fda939a50b7dbb25e0d89d"
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
