class Optokens < Formula
  desc "Keeps an agent's secrets in a 1Password vault through a service account"
  homepage "https://github.com/sunfmin/optokens"
  version "0.1.1"

  depends_on "sunfmin/tap/onepassword-cli"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.1/optokens-0.1.1-macos-arm64.tar.gz"
      sha256 "a7162592fb93cf5b75768a71fda2b4402732a21dd1d24a1286f398898d1c5935"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.1/optokens-0.1.1-macos-x86_64.tar.gz"
      sha256 "250986d92f7aaaccb8f16850101d773e9f162a6f0bc006f61f71fa67e9f3818a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.1/optokens-0.1.1-linux-arm64.tar.gz"
      sha256 "fa7e5f2c7c484fe6688b74f4c509a08c2591bdca689b25ea4c6bcb21e0e1b39a"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.1/optokens-0.1.1-linux-x86_64.tar.gz"
      sha256 "ea211c8e2dd5c4117501563c4b5a31323f7bbed44a0b21c8f559f30982fe75d1"
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
