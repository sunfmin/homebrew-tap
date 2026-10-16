class Hkj < Formula
  desc "Loads a Chanjet 好会计 backup into MySQL and answers questions about the books"
  homepage "https://github.com/sunfmin/hkj"
  version "0.1.10"

  uses_from_macos "curl"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.10/hkj-0.1.10-macos-arm64.tar.gz"
      sha256 "65f752ad8249e39fe08ac850d23bd6124483b7ea204841bb289bc3c74c23bfeb"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.10/hkj-0.1.10-macos-x86_64.tar.gz"
      sha256 "3e0ad473d48e1a5443827d6258adad81e50ed2055f69931e35e2269d5f5fe492"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.10/hkj-0.1.10-linux-arm64.tar.gz"
      sha256 "5c15a9533bb11c8c1ac7ac2275d4285aa4e4cd017d784825306f398fa6aadc80"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.10/hkj-0.1.10-linux-x86_64.tar.gz"
      sha256 "ce9468c31811387e1c7f28babab88b3dcfc31865b6e9c03578babf17ce5ba1ba"
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
