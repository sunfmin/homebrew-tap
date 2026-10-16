class Hkj < Formula
  desc "Loads a Chanjet 好会计 backup into MySQL and answers questions about the books"
  homepage "https://github.com/sunfmin/hkj"
  version "0.1.15"

  uses_from_macos "curl"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.15/hkj-0.1.15-macos-arm64.tar.gz"
      sha256 "bc906fbf62d3916276a8ec26414cd257b03dfa687f3d8f063e988ddabbc69453"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.15/hkj-0.1.15-macos-x86_64.tar.gz"
      sha256 "35c9216daec10e8ac9b475a00968622c1f6289fc0248cf0df5dc5b53b9266f54"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.15/hkj-0.1.15-linux-arm64.tar.gz"
      sha256 "55994fa7c655fc5edf6854257bbdbddd9256d30eb62e64dad980bbba6c9b802a"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.15/hkj-0.1.15-linux-x86_64.tar.gz"
      sha256 "0d6eb0fb5d7944787632d654287a18343a103458bc1bd8e22578ed03407cf7fb"
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
