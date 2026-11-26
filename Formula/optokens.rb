class Optokens < Formula
  desc "Keeps an agent's secrets in a 1Password vault through a service account"
  homepage "https://github.com/sunfmin/optokens"
  version "0.1.4"

  depends_on "sunfmin/tap/onepassword-cli"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.4/optokens-0.1.4-macos-arm64.tar.gz"
      sha256 "6e49a4d48515339b5fb3fa77a0c21ca384950342769645f73cc7b0a134c653ec"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.4/optokens-0.1.4-macos-x86_64.tar.gz"
      sha256 "eeaf00a029c47f443136d963ddf209b659eec6f4e38c2566e2f400cb0377bb0b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.4/optokens-0.1.4-linux-arm64.tar.gz"
      sha256 "a9f2cb7a9d86578c18758aa4752ee9c9956a3b38798021f26a1db569508dd318"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.4/optokens-0.1.4-linux-x86_64.tar.gz"
      sha256 "b3cbb7871c16205083b4e8923af64f95033320d55c0cfaf2ca1577494290b5e1"
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
