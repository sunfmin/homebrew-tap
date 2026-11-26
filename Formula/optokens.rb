class Optokens < Formula
  desc "Keeps an agent's secrets in a 1Password vault through a service account"
  homepage "https://github.com/sunfmin/optokens"
  version "0.1.5"

  depends_on "sunfmin/tap/onepassword-cli"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.5/optokens-0.1.5-macos-arm64.tar.gz"
      sha256 "734ce7298e50e74b6774957201ea004d0f184773bcf4d7543e53c176279a41e4"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.5/optokens-0.1.5-macos-x86_64.tar.gz"
      sha256 "5b643a33ff1ef2c148117b791f3cc6428644373c9632fdec8b00071dbdf60182"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.5/optokens-0.1.5-linux-arm64.tar.gz"
      sha256 "32fc7267805313f99649bd0f1eb11a8a4fadb68b9238d2b9773ca61b52006e7f"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.5/optokens-0.1.5-linux-x86_64.tar.gz"
      sha256 "b0b0aed476e34a3ef6234f9015e7e66723a42a6644e07ee807e87b13fe5b5665"
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
