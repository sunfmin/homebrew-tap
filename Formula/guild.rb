class Guild < Formula
  desc "Guild of specialist agents across several Macs"
  homepage "https://github.com/sunfmin/guild"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/guild-v0.2.6/guild-0.2.6-macos-arm64.tar.gz"
  sha256 "02d2ff5bfdb8b866bd9aba2416988a04ecd7898faac309b4f53ec29232cfa548"
  version "0.2.6"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "guild", "guildd"
  end

  def caveats
    <<~EOS
      Then, on this machine: guildd install
      guildd runs instances in tmux, and finds it on the PATH or in
      Homebrew's, pixi's or ~/.local's bin. On a standard account, where
      Homebrew in ~/homebrew builds tmux from source, install it with:
        pixi global install tmux
      Have `git`, `gh` and `sqlite3` on PATH.
    EOS
  end

  test do
    assert_equal "guild #{version}", shell_output("#{bin}/guild --version").strip
    assert_equal "guildd #{version}", shell_output("#{bin}/guildd --version").strip
  end
end
