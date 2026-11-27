class Optokens < Formula
  desc "Keeps an agent's secrets in a 1Password vault through a service account"
  homepage "https://github.com/sunfmin/optokens"
  version "0.1.11"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.11/optokens-0.1.11-macos-arm64.tar.gz"
      sha256 "a03afe9e0c7697b85673ad58ca98e968f81dee2ee139b606813ff14e7f4bfaa6"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.11/optokens-0.1.11-macos-x86_64.tar.gz"
      sha256 "8386a6b97e60e2a944e7ac7f94a856474b312e6df34b2e5f368b69006e389488"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.11/optokens-0.1.11-linux-arm64.tar.gz"
      sha256 "7f63af0fd931e5b768078c80240a0b01972095f1499b2695b237871d46f0159c"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.11/optokens-0.1.11-linux-x86_64.tar.gz"
      sha256 "6996c3ccc8428970c246ef4ac06007a59e1636b6319a8c0694af9eb2c572b491"
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
