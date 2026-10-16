class Hkj < Formula
  desc "Loads a Chanjet 好会计 backup into MySQL and answers questions about the books"
  homepage "https://github.com/sunfmin/hkj"
  version "0.1.3"

  uses_from_macos "curl"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.3/hkj-0.1.3-macos-arm64.tar.gz"
      sha256 "7d12277c7a7b799fe596c42f6baff739d81c8377f51cfdc0fe266c1a569cb65d"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.3/hkj-0.1.3-macos-x86_64.tar.gz"
      sha256 "9020871b42219012c02e294c028853d133023769b0327dbf784ccff7019663ac"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.3/hkj-0.1.3-linux-arm64.tar.gz"
      sha256 "e91e2cde8c6f2a2dd8ff1779cb45968b9328325c46a9b83c9c8861066c0454af"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.3/hkj-0.1.3-linux-x86_64.tar.gz"
      sha256 "32de66f634778d730a0f5f7cbd2ed61d5eec7306d543ebec1a8b54d333982c2c"
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
