class ClaudeStallGuard < Formula
  desc "Stall watchdog for Claude Code: turn interactive-prompt hangs into fast failures"
  homepage "https://github.com/sunfmin/claude-stall-guard"
  url "https://github.com/sunfmin/claude-stall-guard/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "3759fdce4958bb9e415ed9fde2aeecb68345777676fa1de848a29f01baddbe1b"
  license "MIT"

  def install
    # Keep bin/ and hooks/ side by side: the hook locates the guard (and
    # stall-guard-hook locates the hook) via their own relative paths, so the
    # pair stays version-matched.
    libexec.install "bin", "hooks"
    bin.install_symlink libexec/"bin/stall-guard", libexec/"bin/stall-guard-hook"
  end

  def caveats
    <<~EOS
      To enable the Claude Code hook globally (merges one PreToolUse entry
      into ~/.claude/settings.json; timestamped backup, other settings
      untouched):

        stall-guard-hook enable

      Disable with `stall-guard-hook disable`. New Claude Code sessions pick
      the change up; restart sessions that are already running.
    EOS
  end

  test do
    assert_match "hello-brew", shell_output("#{bin}/stall-guard -c 'echo hello-brew'")
  end
end
