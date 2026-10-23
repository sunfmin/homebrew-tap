class Diskreap < Formula
  desc "Agent CLI that frees disk space by Rules kept in a private gist, safely"
  homepage "https://github.com/sunfmin/diskreap"
  version "0.4.1"
  license "Apache-2.0"

  depends_on :macos
  depends_on "gh"

  on_arm do
    url "https://github.com/sunfmin/diskreap/releases/download/v0.4.1/diskreap-0.4.1-macos-arm64.tar.gz"
    sha256 "cd3b86a074ec8ddee35b5a378d035651bf4c4e7bb82eab54220aaaa87e6da928"
  end
  on_intel do
    url "https://github.com/sunfmin/diskreap/releases/download/v0.4.1/diskreap-0.4.1-macos-x86_64.tar.gz"
    sha256 "21a63b9227bcd31e814294b53160e36ac411b45b13881d5f04c11ef24cedb49f"
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
