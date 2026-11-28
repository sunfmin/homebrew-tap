class Optokens < Formula
  desc "Keeps an agent's secrets in a 1Password vault through a service account"
  homepage "https://github.com/sunfmin/optokens"
  version "0.1.18"

  on_macos do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.18/optokens-0.1.18-macos-universal.tar.gz"
    sha256 "33f1b11e75da78b9652edf880db82a9695a4cf60da5e0c7fe37005e1d55f789b"
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.18/optokens-0.1.18-linux-arm64.tar.gz"
      sha256 "91397696014405fbdcb31a4ed57eade13199ca1eccf05aa58b5494216bc1ce1f"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.18/optokens-0.1.18-linux-x86_64.tar.gz"
      sha256 "6b2214e41cdd70b7d20602a8ab42ae1caf4b04a2621226c1ce5c7b5a6112e37d"
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
