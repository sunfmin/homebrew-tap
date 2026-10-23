class Diskreap < Formula
  desc "Agent CLI that frees disk space by Rules kept in a private gist, safely"
  homepage "https://github.com/sunfmin/diskreap"
  version "0.6.0"
  license "Apache-2.0"

  depends_on :macos
  depends_on "gh"

  on_arm do
    url "https://github.com/sunfmin/diskreap/releases/download/v0.6.0/diskreap-0.6.0-macos-arm64.tar.gz"
    sha256 "ba8b0148d2bafcfd0e4c90dadbc418e042f403a0783245b1a4ae1715bbf672a9"
  end
  on_intel do
    url "https://github.com/sunfmin/diskreap/releases/download/v0.6.0/diskreap-0.6.0-macos-x86_64.tar.gz"
    sha256 "1628334df843f8992e7b106129c0380768c9fbbab504c81894af7c2125237ea7"
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
