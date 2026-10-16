class Hkj < Formula
  desc "Loads a Chanjet 好会计 backup into MySQL and answers questions about the books"
  homepage "https://github.com/sunfmin/hkj"
  version "0.1.19"

  uses_from_macos "curl"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.19/hkj-0.1.19-macos-arm64.tar.gz"
      sha256 "4af83991a1904244124f98c5aefaa1e530ab16b5b4d9a5257fbc2450965541c9"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.19/hkj-0.1.19-macos-x86_64.tar.gz"
      sha256 "ca5c0e4e92a0935687ced59bdbd8d588d62b120260183f2548e4e4aeb531bb83"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.19/hkj-0.1.19-linux-arm64.tar.gz"
      sha256 "80c700dbe6aa013bbaa75f9b96f5acc356b2eec0cc7c46f646c464e7fc8d3c77"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.19/hkj-0.1.19-linux-x86_64.tar.gz"
      sha256 "ae0463fbcdeef59bc424ac116893d5bfc3a458e86f459d85442b36779bdc1891"
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
