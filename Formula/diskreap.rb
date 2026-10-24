class Diskreap < Formula
  desc "Agent CLI that frees disk space by Rules kept in a private gist, safely"
  homepage "https://github.com/sunfmin/diskreap"
  version "0.6.1"
  license "Apache-2.0"

  depends_on :macos
  depends_on "gh"

  on_arm do
    url "https://github.com/sunfmin/diskreap/releases/download/v0.6.1/diskreap-0.6.1-macos-arm64.tar.gz"
    sha256 "197fbe0526b63727c1fbe31d7c5016f4bdf97887d88a280899d726a70de6af44"
  end
  on_intel do
    url "https://github.com/sunfmin/diskreap/releases/download/v0.6.1/diskreap-0.6.1-macos-x86_64.tar.gz"
    sha256 "db0c8e35b42bdce4b0082b08f7d225ca32ec98b0d1d1404612f8645eb813ccad"
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
