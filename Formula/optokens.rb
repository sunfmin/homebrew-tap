class Optokens < Formula
  desc "Keeps an agent's secrets in a 1Password vault through a service account"
  homepage "https://github.com/sunfmin/optokens"
  version "0.1.17"

  on_macos do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.17/optokens-0.1.17-macos-universal.tar.gz"
    sha256 "f4910f768ab60e7c5fa5c141f3d51b8ca1b95d311c5e430d34054d3892e8468e"
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.17/optokens-0.1.17-linux-arm64.tar.gz"
      sha256 "f6a2e3dc27e1c2bbdbe5503dbb35065fefbabb2a0d3c121aa1c3cf1e393afaed"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.17/optokens-0.1.17-linux-x86_64.tar.gz"
      sha256 "eb14d80f47e099f2dec86584ddd8df6d42d3bf28d05c3695f31ec68695c83ccf"
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
