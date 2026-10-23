class Diskreap < Formula
  desc "Agent CLI that frees disk space by Rules kept in a private gist, safely"
  homepage "https://github.com/sunfmin/diskreap"
  version "0.5.0"
  license "Apache-2.0"

  depends_on :macos
  depends_on "gh"

  on_arm do
    url "https://github.com/sunfmin/diskreap/releases/download/v0.5.0/diskreap-0.5.0-macos-arm64.tar.gz"
    sha256 "6571df7aa807a6a81ec2b6e713c69eb4ef3a1b4d0a497879592bf1662e00b4f9"
  end
  on_intel do
    url "https://github.com/sunfmin/diskreap/releases/download/v0.5.0/diskreap-0.5.0-macos-x86_64.tar.gz"
    sha256 "6d90327586e4718ad2272ee5ff3313abd94a00af4cc3e46664d1098f55cfb688"
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
