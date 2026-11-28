class Optokens < Formula
  desc "Keeps an agent's secrets in a 1Password vault through a service account"
  homepage "https://github.com/sunfmin/optokens"
  version "0.1.15"

  on_macos do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.15/optokens-0.1.15-macos-universal.tar.gz"
    sha256 "4b779a8eef24d8526f72f490c85eef4fce26361d71a322af714d00cb8185ada1"
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.15/optokens-0.1.15-linux-arm64.tar.gz"
      sha256 "62d880229645659ea9449886ce4a1737d4087ee390aa8f89ab99e21de7f56190"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.15/optokens-0.1.15-linux-x86_64.tar.gz"
      sha256 "2b392673705cfd7a50f863e574f221c8e3f5c96926fac36adca323d053b6b426"
    end
  end

  def install
    bin.install "optokens"
  end

  def caveats
    <<~EOS
      optokens needs tailscale, on a tailnet, for `put --fields` and `init`: they serve their one-time link on the tailnet only.
    EOS
  end

  test do
    assert_equal "optokens #{version}", shell_output("#{bin}/optokens --version").strip
  end
end
