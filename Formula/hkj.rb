class Hkj < Formula
  desc "Loads a Chanjet 好会计 backup into MySQL and answers questions about the books"
  homepage "https://github.com/sunfmin/hkj"
  version "0.1.23"

  uses_from_macos "curl"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.23/hkj-0.1.23-macos-arm64.tar.gz"
      sha256 "ea0491571e207165b310068fb2c02a7320063823f992e69b88901c718334b52d"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.23/hkj-0.1.23-macos-x86_64.tar.gz"
      sha256 "6cf185af4b68813d69698d5383ddea7c1f084b6ff3f21f20251ae5f61066a1cf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.23/hkj-0.1.23-linux-arm64.tar.gz"
      sha256 "74f1bd763e2891eb373251fe61183bb7a4174ceb8b6258564969729c5c419d69"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.23/hkj-0.1.23-linux-x86_64.tar.gz"
      sha256 "46519cf85f5a3e9b58c0bf174b6606b4b8aa57546481860e427eed05543d1449"
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
