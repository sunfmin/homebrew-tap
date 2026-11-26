class Optokens < Formula
  desc "Keeps an agent's secrets in a 1Password vault through a service account"
  homepage "https://github.com/sunfmin/optokens"
  version "0.1.3"

  depends_on "sunfmin/tap/onepassword-cli"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.3/optokens-0.1.3-macos-arm64.tar.gz"
      sha256 "db49a90cc41d4fda1faec894d12344cc85abb2ff904bcff181cfe085735a5042"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.3/optokens-0.1.3-macos-x86_64.tar.gz"
      sha256 "da22249a2de0978f3234ce46868e51aa6cd67b81c7db069db1aebd9f9b6027d8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.3/optokens-0.1.3-linux-arm64.tar.gz"
      sha256 "48a27e31f017021ba92f238e2bebddf2788d0592d651565bb810928b83ff27b7"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.3/optokens-0.1.3-linux-x86_64.tar.gz"
      sha256 "d6c17e7f6cab6e6f71a7ca885d119242f00d657ef15777758701893fb65c101d"
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
