class Hkj < Formula
  desc "Loads a Chanjet 好会计 backup into MySQL and answers questions about the books"
  homepage "https://github.com/sunfmin/hkj"
  version "0.1.1"

  uses_from_macos "curl"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.1/hkj-0.1.1-macos-arm64.tar.gz"
      sha256 "bbc3f959a7d41c687334219c0f175071583044a4bc11924b83e08db72a9fec93"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.1/hkj-0.1.1-macos-x86_64.tar.gz"
      sha256 "1e8843cb30987e65cc87de810dd138fa467085397b2594368cdd10f5945639e3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.1/hkj-0.1.1-linux-arm64.tar.gz"
      sha256 "e728a2e12ca62368b2758414c94a6fae4059037e30a270f99978a348e745cb05"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.1/hkj-0.1.1-linux-x86_64.tar.gz"
      sha256 "459d2a4c85fe807eff9fc693baeeb5ca11cb76cbd590388c0eb1aa8afc83d669"
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
