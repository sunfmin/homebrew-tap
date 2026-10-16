class Hkj < Formula
  desc "Loads a Chanjet 好会计 backup into MySQL and answers questions about the books"
  homepage "https://github.com/sunfmin/hkj"
  version "0.1.5"

  uses_from_macos "curl"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.5/hkj-0.1.5-macos-arm64.tar.gz"
      sha256 "4f04db693c5f61bb3ed980af6d7507fca7b9add057dbefadbdd7c5a7c14564c1"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.5/hkj-0.1.5-macos-x86_64.tar.gz"
      sha256 "94bf58ecba9bfb727c101f70b2c67022a777076cc06465950d5d2aacd287237b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.5/hkj-0.1.5-linux-arm64.tar.gz"
      sha256 "def4a471af1123571b1b255a476b6570aa5794ded7a48c734403a3c7acc0cce3"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.5/hkj-0.1.5-linux-x86_64.tar.gz"
      sha256 "d9ca95849b672ea6472fd5c14014c0a4f3b173a9ef90e73033aadd011a238b8f"
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
