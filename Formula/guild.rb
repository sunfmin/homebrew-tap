class Guild < Formula
  desc "Guild of specialist agents across several Macs"
  homepage "https://github.com/sunfmin/guild"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/guild-v0.2.25/guild-0.2.25-macos-arm64.tar.gz"
  sha256 "689fd76c7346d1b42c9653cb9143f4ffb686f14e5cb2a1d932e6ef625a4088f7"
  version "0.2.25"

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
