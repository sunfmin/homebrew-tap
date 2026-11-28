class Optokens < Formula
  desc "Keeps an agent's secrets in a 1Password vault through a service account"
  homepage "https://github.com/sunfmin/optokens"
  version "0.1.22"

  on_macos do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.22/optokens-0.1.22-macos-universal.tar.gz"
    sha256 "f43cf5f998f52fe00096280d50bb79d3d2bf488cf239f036a993c26c05cc1259"
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.22/optokens-0.1.22-linux-arm64.tar.gz"
      sha256 "d61dc30739aa626dbe0416ab83d81c48c5f21f04756a8216162604794f35ada7"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.22/optokens-0.1.22-linux-x86_64.tar.gz"
      sha256 "557cde6ef9707ee58d745c4483746f6cce85fa941d018d99050377a0922a7b60"
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
