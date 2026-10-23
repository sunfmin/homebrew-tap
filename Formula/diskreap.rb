class Diskreap < Formula
  desc "Agent CLI that frees disk space by Rules kept in a private gist, safely"
  homepage "https://github.com/sunfmin/diskreap"
  version "0.2.0"
  license "Apache-2.0"

  depends_on :macos
  depends_on "gh"

  on_arm do
    url "https://github.com/sunfmin/diskreap/releases/download/v0.2.0/diskreap-0.2.0-macos-arm64.tar.gz"
    sha256 "0619087c9abbc3bd54a1d2ad6c86b633bf8cf0985e404b04ccf161d94bbf5982"
  end
  on_intel do
    url "https://github.com/sunfmin/diskreap/releases/download/v0.2.0/diskreap-0.2.0-macos-x86_64.tar.gz"
    sha256 "8dbcb449ea0df60bac2a0a9820aa3671f43e305515368d0246d0bc451a21392b"
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
