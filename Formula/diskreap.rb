class Diskreap < Formula
  desc "Agent CLI that frees disk space by Rules kept in a private gist, safely"
  homepage "https://github.com/sunfmin/diskreap"
  version "0.3.0"
  license "Apache-2.0"

  depends_on :macos
  depends_on "gh"

  on_arm do
    url "https://github.com/sunfmin/diskreap/releases/download/v0.3.0/diskreap-0.3.0-macos-arm64.tar.gz"
    sha256 "abccd2b5b677b53b0d119df7d42ee87449ceeb5d900504ae442df37b12ae92ad"
  end
  on_intel do
    url "https://github.com/sunfmin/diskreap/releases/download/v0.3.0/diskreap-0.3.0-macos-x86_64.tar.gz"
    sha256 "6385b1a86014715c3f0ccda1312a760d5e3144dd5155d4bd44c39f24d1da7918"
  end

  def install
    bin.install "diskreap"
  end

  def caveats
    <<~EOS
      diskreap keeps its Rules in a private gist of yours, reached through gh.
      Log gh in with the gist scope once:
        gh auth login
      then `diskreap doctor` names whatever else is missing, with its fix,
      and `diskreap init` makes the gist.
    EOS
  end

  test do
    assert_equal "diskreap #{version}", shell_output("#{bin}/diskreap --version").strip
  end
end
