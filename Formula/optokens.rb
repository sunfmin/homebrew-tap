class Optokens < Formula
  desc "Keeps an agent's secrets in a 1Password vault through a service account"
  homepage "https://github.com/sunfmin/optokens"
  version "0.1.16"

  on_macos do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.16/optokens-0.1.16-macos-universal.tar.gz"
    sha256 "3348d67fc5035e5295a181ba4f143fa4e3e735b1652442f47b876a3bdabdfdd7"
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.16/optokens-0.1.16-linux-arm64.tar.gz"
      sha256 "c9ccf9b17a76b99b4701e1c18c31f0c34f795dc7cadd650a2326b2493e2a32d5"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.16/optokens-0.1.16-linux-x86_64.tar.gz"
      sha256 "70d50177cf301ed385f26a33ebdff9b79a30ae3d23f8da701f5f134bd4418795"
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
