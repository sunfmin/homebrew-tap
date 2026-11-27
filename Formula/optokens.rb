class Optokens < Formula
  desc "Keeps an agent's secrets in a 1Password vault through a service account"
  homepage "https://github.com/sunfmin/optokens"
  version "0.1.12"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.12/optokens-0.1.12-macos-arm64.tar.gz"
      sha256 "e20400a4172da39ef103ef2909737a4a60ff033518c23e777b9a0978f640e733"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.12/optokens-0.1.12-macos-x86_64.tar.gz"
      sha256 "01e9885fe98c48950229e9ca3b5a1d4698b3817ece647a2abbade9a3b0111267"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.12/optokens-0.1.12-linux-arm64.tar.gz"
      sha256 "0a65fcdd91f63175390a20c8392960f2250085c09d4804b21032b6b3a6d0adcc"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.12/optokens-0.1.12-linux-x86_64.tar.gz"
      sha256 "64f9ef88030f9cc3b8e97b6eba0adc4335ca4da96aa2c26ac47a86b6ec89f3d6"
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
