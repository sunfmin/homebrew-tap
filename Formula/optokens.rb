class Optokens < Formula
  desc "Keeps an agent's secrets in a 1Password vault through a service account"
  homepage "https://github.com/sunfmin/optokens"
  version "0.1.13"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.13/optokens-0.1.13-macos-arm64.tar.gz"
      sha256 "798f28996fa7bf23136005e09f808e603d2bccfcf7765f47c2e5339984261f76"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.13/optokens-0.1.13-macos-x86_64.tar.gz"
      sha256 "73b7532b433290bdc34b0b4096bd0ccf2d7d1ca0986a31a8893783f419a54a46"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.13/optokens-0.1.13-linux-arm64.tar.gz"
      sha256 "1ef1a810bf28cb7431344762052f5c85a8ec723205aae66469479464b6865926"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.13/optokens-0.1.13-linux-x86_64.tar.gz"
      sha256 "b17348bd0d41466bed7eb38dc8201c8bf90b116e99ee831d115040d7812d3860"
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
