class Diskreap < Formula
  desc "Agent CLI that frees disk space by Rules kept in a private gist, safely"
  homepage "https://github.com/sunfmin/diskreap"
  version "0.6.2"
  license "Apache-2.0"

  depends_on :macos
  depends_on "gh"

  on_arm do
    url "https://github.com/sunfmin/diskreap/releases/download/v0.6.2/diskreap-0.6.2-macos-arm64.tar.gz"
    sha256 "bf71348d4e97f4cf89f64413fdd2aaf385e9fd52433c191e0a29148d1306b69f"
  end
  on_intel do
    url "https://github.com/sunfmin/diskreap/releases/download/v0.6.2/diskreap-0.6.2-macos-x86_64.tar.gz"
    sha256 "c888ac41f7d04d5cd18ba2073951b15fed7b8fe36861415f6135b7ea132bb921"
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
