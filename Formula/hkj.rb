class Hkj < Formula
  desc "Loads a Chanjet 好会计 backup into MySQL and answers questions about the books"
  homepage "https://github.com/sunfmin/hkj"
  version "0.1.8"

  uses_from_macos "curl"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.8/hkj-0.1.8-macos-arm64.tar.gz"
      sha256 "b4b77eab957d2822373be9a48eb233030e11c74c13aaceabfc08e6b1d17d05db"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.8/hkj-0.1.8-macos-x86_64.tar.gz"
      sha256 "058d264a6be6ce699966d440ee1a703c0daa7be61b948a7beaea268e22278ae9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.8/hkj-0.1.8-linux-arm64.tar.gz"
      sha256 "9f5bb80fb9a99165ff17ea4b95f37935eeffa6aba5c1921e30444aa94b260090"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.8/hkj-0.1.8-linux-x86_64.tar.gz"
      sha256 "e6a7072967ae6d616efd770f5d6db292d5f41e832a6ba090edf15f8290d52d11"
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
