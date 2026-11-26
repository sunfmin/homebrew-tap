class Optokens < Formula
  desc "Keeps an agent's secrets in a 1Password vault through a service account"
  homepage "https://github.com/sunfmin/optokens"
  version "0.1.7"

  depends_on "sunfmin/tap/onepassword-cli"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.7/optokens-0.1.7-macos-arm64.tar.gz"
      sha256 "d4a95b49900af29e24d066f6af5b444a4954d11cc87f84fee37c8c95de263a5e"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.7/optokens-0.1.7-macos-x86_64.tar.gz"
      sha256 "5ae1b3e1c6f450a0b53555cb8a6a0991a75a4b6ed7e13dd491b95ce815f066d0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.7/optokens-0.1.7-linux-arm64.tar.gz"
      sha256 "5e5e9eeb94646fd464533480aa3cab9b67ed100a36713c046c24a709a47c6569"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.7/optokens-0.1.7-linux-x86_64.tar.gz"
      sha256 "6a0383e376741f6646512f22da40a98273db650f94faea077f540233c5110659"
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
