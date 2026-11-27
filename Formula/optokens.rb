class Optokens < Formula
  desc "Keeps an agent's secrets in a 1Password vault through a service account"
  homepage "https://github.com/sunfmin/optokens"
  version "0.1.9"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.9/optokens-0.1.9-macos-arm64.tar.gz"
      sha256 "14f7d558781befda5632bea66fe752fb12a9c9e63860ba615094a4c29124f8e0"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.9/optokens-0.1.9-macos-x86_64.tar.gz"
      sha256 "9668e3535eac2859a1dd35f0c9a9da02bd154858002f3ef2ce7c67da9788b57f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.9/optokens-0.1.9-linux-arm64.tar.gz"
      sha256 "57c417566c8cc44c880c6e3ece7d8ef5533c28efcc9977a95629fb5a68bfd7ab"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.9/optokens-0.1.9-linux-x86_64.tar.gz"
      sha256 "41e7b579563c1af14f05f7bd8230e88670fd4c2c5fbebd9637eddbdae359f0a1"
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
