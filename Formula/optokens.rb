class Optokens < Formula
  desc "Keeps an agent's secrets in a 1Password vault through a service account"
  homepage "https://github.com/sunfmin/optokens"
  version "0.1.20"

  on_macos do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.20/optokens-0.1.20-macos-universal.tar.gz"
    sha256 "710f1246e497d6a976699556b77bd170d689846174f399df14f365f156bd4057"
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.20/optokens-0.1.20-linux-arm64.tar.gz"
      sha256 "ce5a8d3c739faa23a0aa4c44c5e5508e1349fe8ec8a6f4fee8f15dd62f11b667"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.20/optokens-0.1.20-linux-x86_64.tar.gz"
      sha256 "007e0e054519e88223faf2aa9ce382ddfa7f3662e29bf6b2cb3c58a8e02bcab9"
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
