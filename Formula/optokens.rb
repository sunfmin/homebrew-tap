class Optokens < Formula
  desc "Keeps an agent's secrets in a 1Password vault through a service account"
  homepage "https://github.com/sunfmin/optokens"
  version "0.1.2"

  depends_on "sunfmin/tap/onepassword-cli"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.2/optokens-0.1.2-macos-arm64.tar.gz"
      sha256 "f36d23a7e3a28d02f82c79d8462a55b0b4bb8f688ae7cccc6339a9468812d17d"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.2/optokens-0.1.2-macos-x86_64.tar.gz"
      sha256 "965d9447db7c090aa66b4ac45ecfda50bafbf50a11ac06952a8ecc682525955f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.2/optokens-0.1.2-linux-arm64.tar.gz"
      sha256 "812686a16c4f588216050163d893532eb170815aff83a6658bdd22923a4a6282"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.2/optokens-0.1.2-linux-x86_64.tar.gz"
      sha256 "b1f28f2da46999afe68d93150934d15c8bf6f6f9293f8e233f96f91b2cff9cfb"
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
