class Optokens < Formula
  desc "Keeps an agent's secrets in a 1Password vault through a service account"
  homepage "https://github.com/sunfmin/optokens"
  version "0.1.6"

  depends_on "sunfmin/tap/onepassword-cli"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.6/optokens-0.1.6-macos-arm64.tar.gz"
      sha256 "2e6c9b88f1c6439c4ad919f0cc61661de775fdd6324277a4b1890bcf9ac5e368"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.6/optokens-0.1.6-macos-x86_64.tar.gz"
      sha256 "4c87296157d052bc9bf06b3deb50d30a929ef30c8798c1021ee8269558b08548"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.6/optokens-0.1.6-linux-arm64.tar.gz"
      sha256 "3eb974f07aaaaca7daf0eac54f0911e8c496e8280763ccb1f8c0cfe2920d6388"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.6/optokens-0.1.6-linux-x86_64.tar.gz"
      sha256 "2bb8a77b0eda7a6bddd7dd108088908c2529aa5af9057690484c82a05877fec3"
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
