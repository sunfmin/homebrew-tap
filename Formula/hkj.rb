class Hkj < Formula
  desc "Loads a Chanjet 好会计 backup into MySQL and answers questions about the books"
  homepage "https://github.com/sunfmin/hkj"
  version "0.1.20"

  uses_from_macos "curl"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.20/hkj-0.1.20-macos-arm64.tar.gz"
      sha256 "3d655a9bf7aa79cf526305630afea79fbb84105177e9026aa5fc8593905be65d"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.20/hkj-0.1.20-macos-x86_64.tar.gz"
      sha256 "def8b40c1101edca05dad83043b6d2787f8b9176d1ecbdfaaf93af7d90226e99"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.20/hkj-0.1.20-linux-arm64.tar.gz"
      sha256 "a23a2132dbfbbbc7020a3106106976393e62892ea5415b7102a0508a8c9795b9"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.20/hkj-0.1.20-linux-x86_64.tar.gz"
      sha256 "be6b8c42fafffa5137c006952d05bfd137763bea9734975f09b35c13155698a4"
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
