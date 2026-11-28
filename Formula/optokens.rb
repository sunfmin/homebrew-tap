class Optokens < Formula
  desc "Keeps an agent's secrets in a 1Password vault through a service account"
  homepage "https://github.com/sunfmin/optokens"
  version "0.1.14"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.14/optokens-0.1.14-macos-arm64.tar.gz"
      sha256 "2633639462de15e0596384b39125a0f04af9afbfab18d34bd02564bf4b6bcd08"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.14/optokens-0.1.14-macos-x86_64.tar.gz"
      sha256 "6ae4091b1f2615a99787ca115e7443630aa3dc529429d5788ab1fac704342a7a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.14/optokens-0.1.14-linux-arm64.tar.gz"
      sha256 "5d65f0babdef893de78fe0747fd1885209e1ea82c2488f25a3f9589446d65564"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/optokens-v0.1.14/optokens-0.1.14-linux-x86_64.tar.gz"
      sha256 "be2cffd054cbda8c1906cf40f084c6d68f4fa2ce515a7171da24f41f5eeb8e0d"
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
