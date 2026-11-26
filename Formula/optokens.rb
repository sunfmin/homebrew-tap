class Optokens < Formula
  desc "Keeps an agent's secrets in a 1Password vault through a service account"
  homepage "https://github.com/sunfmin/optokens"
  version "0.1.0"

  depends_on "sunfmin/tap/onepassword-cli"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.0/optokens-0.1.0-macos-arm64.tar.gz"
      sha256 "61a84d367d3777386d8e734a95ef6b7abed79db7f2631db58f9a11759157a62e"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.0/optokens-0.1.0-macos-x86_64.tar.gz"
      sha256 "5a938f00cf089c4d39d5b9fdd29e4cceae3df7b64a489bb235078e3e01c990dc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.0/optokens-0.1.0-linux-arm64.tar.gz"
      sha256 "9fa06d191e3210e6a5e4c6ec5b2357a7fbbfaf40fddc3d966f42ea4989a0127f"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.0/optokens-0.1.0-linux-x86_64.tar.gz"
      sha256 "c68fa30ccb6d899d8620ae7c915ba819799ce3f7a45e80df1b9c6131d8b3a823"
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
