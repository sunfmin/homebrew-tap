class OnepasswordCli < Formula
  desc "1Password CLI, op, from 1Password's own release archives"
  homepage "https://developer.1password.com/docs/cli"
  # Written by optokens' packaging/release.sh op <version>; not edited by hand.
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://cache.agilebits.com/dist/1P/op2/pkg/v2.42.0/op_darwin_arm64_v2.42.0.zip"
      sha256 "216e86c6db491c752ccb7819b3b1851cc8456ea015a1f7c8a58dd103ef0a474e"
    end
    on_intel do
      url "https://cache.agilebits.com/dist/1P/op2/pkg/v2.42.0/op_darwin_amd64_v2.42.0.zip"
      sha256 "917b0d2b41de3d943bb6562331275c43c4b525af6b003eade06248905ddd62b0"
    end
  end
  on_linux do
    on_arm do
      url "https://cache.agilebits.com/dist/1P/op2/pkg/v2.42.0/op_linux_arm64_v2.42.0.zip"
      sha256 "e56c379fabafb393ce699258e484694abe464870fb41f35ce1b5c3f17868ba61"
    end
    on_intel do
      url "https://cache.agilebits.com/dist/1P/op2/pkg/v2.42.0/op_linux_amd64_v2.42.0.zip"
      sha256 "261fe3844a43e7e83a3d85e8a9f36411729436a1d3add1dc7dd46cbbceebe9e5"
    end
  end

  conflicts_with cask: "1password-cli"

  def install
    # The zip's quarantine reaches op, and on a Mac nobody watches its first
    # launch waits forever on a Gatekeeper prompt. op is 1Password-signed.
    quiet_system "xattr", "-d", "com.apple.quarantine", "op" if OS.mac?
    bin.install "op"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/op --version").strip
  end
end
