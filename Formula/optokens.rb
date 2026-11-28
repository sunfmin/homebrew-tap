class Optokens < Formula
  desc "Keeps an agent's secrets in a 1Password vault through a service account"
  homepage "https://github.com/sunfmin/optokens"
  version "0.1.21"

  on_macos do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.21/optokens-0.1.21-macos-universal.tar.gz"
    sha256 "1178574c49ff7bc79067249f2eebff1d136fed9073aba0313505d3f341122fa3"
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.21/optokens-0.1.21-linux-arm64.tar.gz"
      sha256 "603f754915e9528c5596f19e04ee8b56a852d07811149f830605e97fbdfced81"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.21/optokens-0.1.21-linux-x86_64.tar.gz"
      sha256 "ae1f1ae0f3477b9315bb8219da60350119031a769dd2947f782018e39fe1a2fd"
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
