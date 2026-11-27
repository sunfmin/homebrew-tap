class Optokens < Formula
  desc "Keeps an agent's secrets in a 1Password vault through a service account"
  homepage "https://github.com/sunfmin/optokens"
  version "0.1.10"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.10/optokens-0.1.10-macos-arm64.tar.gz"
      sha256 "1599208b768af7d4d2a4a21ffdbbcbd513d5c5720941a666e620a6dc54eddd57"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.10/optokens-0.1.10-macos-x86_64.tar.gz"
      sha256 "59d1350643c9477ec9bcfc4bae1fe8a1eeabb2ac864790c6e9b0341395a49879"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.10/optokens-0.1.10-linux-arm64.tar.gz"
      sha256 "18f8db39854298d0f96a8f12fff1cfcbe161760f19eb7b87c6933dc89ba75e5f"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.10/optokens-0.1.10-linux-x86_64.tar.gz"
      sha256 "bd3eefbedb49b6f3223b71cfade6e158d88a98638a2863f7212dc77f8e572322"
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
