class Diskreap < Formula
  desc "Agent CLI that frees disk space by Rules kept in a private gist, safely"
  homepage "https://github.com/sunfmin/diskreap"
  version "0.4.0"
  license "Apache-2.0"

  depends_on :macos
  depends_on "gh"

  on_arm do
    url "https://github.com/sunfmin/diskreap/releases/download/v0.4.0/diskreap-0.4.0-macos-arm64.tar.gz"
    sha256 "5882c2f5551e9b7db4764fc90a07f6a03351781c48332d849da8496766e5cf3c"
  end
  on_intel do
    url "https://github.com/sunfmin/diskreap/releases/download/v0.4.0/diskreap-0.4.0-macos-x86_64.tar.gz"
    sha256 "cd89cc79a5503625c70e10cf3ac882a9bb50ce77d8d2949ce163e018a271b9a1"
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
