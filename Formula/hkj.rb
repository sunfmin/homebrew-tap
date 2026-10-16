class Hkj < Formula
  desc "Loads a Chanjet 好会计 backup into MySQL and answers questions about the books"
  homepage "https://github.com/sunfmin/hkj"
  version "0.1.12"

  uses_from_macos "curl"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.12/hkj-0.1.12-macos-arm64.tar.gz"
      sha256 "29d96a2b24650edb6f086304ff5590ac954bd70d5b37e87d9c8f0e5762d5f0bc"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.12/hkj-0.1.12-macos-x86_64.tar.gz"
      sha256 "8ad38528c7e832b10e6f0a0fc21742963ad40264881ae827a936a6a8bee4c46b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.12/hkj-0.1.12-linux-arm64.tar.gz"
      sha256 "28c683685170731e163de5f27c718f33fba3dbaef5648a699659e5544ceea559"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.12/hkj-0.1.12-linux-x86_64.tar.gz"
      sha256 "16d1ff7501674db4751a7caa974c9b1894d768e137f2716938a350468f95bda3"
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
