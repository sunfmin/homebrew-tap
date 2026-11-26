class Optokens < Formula
  desc "Keeps an agent's secrets in a 1Password vault through a service account"
  homepage "https://github.com/sunfmin/optokens"
  version "0.1.8"

  depends_on "sunfmin/tap/onepassword-cli"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.8/optokens-0.1.8-macos-arm64.tar.gz"
      sha256 "05a0aed5d93d7d50caaa29e9767a74876cb14b0f14ea382ee76eaf0306d8220f"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.8/optokens-0.1.8-macos-x86_64.tar.gz"
      sha256 "f36f9d7b40930d31231324fafd3938058fe46cac59af0138ef0fd4a34c78d902"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.8/optokens-0.1.8-linux-arm64.tar.gz"
      sha256 "cc9a19374d7a6602190f54afc3a7168779fd814757768581fe645cdbb4d2edb6"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.8/optokens-0.1.8-linux-x86_64.tar.gz"
      sha256 "026d427e1150b3a271bd832ddab24428d3b360ae6082709dc85b7fab34b6109b"
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
