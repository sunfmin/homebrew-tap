class Diskreap < Formula
  desc "Agent CLI that frees disk space by Rules kept in a private gist, safely"
  homepage "https://github.com/sunfmin/diskreap"
  version "0.1.0"
  license "Apache-2.0"

  depends_on :macos
  depends_on "gh"

  on_arm do
    url "https://github.com/sunfmin/diskreap/releases/download/v0.1.0/diskreap-0.1.0-macos-arm64.tar.gz"
    sha256 "66bedd42907f6bc0cf205c3a6244a86531c83397229f6b4dcdb708d93e699f9b"
  end
  on_intel do
    url "https://github.com/sunfmin/diskreap/releases/download/v0.1.0/diskreap-0.1.0-macos-x86_64.tar.gz"
    sha256 "d2827d9f88d61f818f5d60154da992ea32fcf9ecae2701f597d255fb4445b6ed"
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
