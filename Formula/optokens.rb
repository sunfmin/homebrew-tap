class Optokens < Formula
  desc "Keeps an agent's secrets in a 1Password vault through a service account"
  homepage "https://github.com/sunfmin/optokens"
  version "0.1.19"

  on_macos do
    url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.19/optokens-0.1.19-macos-universal.tar.gz"
    sha256 "80d8e38b2514a19c50091f2cf87983d60144e9c4ed5fd680741314a01c206051"
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.19/optokens-0.1.19-linux-arm64.tar.gz"
      sha256 "309d951dce5265ae1fdb5f2049bd775cffbb20b6bd19208190c86f5aebbddc16"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.19/optokens-0.1.19-linux-x86_64.tar.gz"
      sha256 "4e142503a6bf36174901246d3ce43f120f30c1764e924ffcc5037b4968c83745"
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
