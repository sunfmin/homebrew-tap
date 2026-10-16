class Hkj < Formula
  desc "Loads a Chanjet 好会计 backup into MySQL and answers questions about the books"
  homepage "https://github.com/sunfmin/hkj"
  version "0.1.13"

  uses_from_macos "curl"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.13/hkj-0.1.13-macos-arm64.tar.gz"
      sha256 "1c6aa6ff0fc39c5fe15bbef5ddfda2bc903f785bdce072e700f452d3a2c134e4"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.13/hkj-0.1.13-macos-x86_64.tar.gz"
      sha256 "b1c63fa028ba4e3909284f53f941953011fc56fa3c4de4892b8b4215b724b13e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.13/hkj-0.1.13-linux-arm64.tar.gz"
      sha256 "28ab26a45eb5edcfb3fbf55418497c4fa3a14bad9c228f5250ee9fd9d70ec737"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.13/hkj-0.1.13-linux-x86_64.tar.gz"
      sha256 "6f9135c90afd038b272bbd757b0716482db1bcb690df45e02024519d636410dd"
    end
  end

  def install
    bin.install "hkj"
  end

  def caveats
    <<~EOS
      hkj loads books into a MySQL server through the `mysql` client, and
      installs neither. For a server on this machine, with its client:
        brew install mysql && brew services start mysql
      Then run `hkj doctor`.
    EOS
  end

  test do
    assert_equal "hkj #{version}", shell_output("#{bin}/hkj --version").strip
  end
end
