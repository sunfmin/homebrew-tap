class Hkj < Formula
  desc "Loads a Chanjet 好会计 backup into MySQL and answers questions about the books"
  homepage "https://github.com/sunfmin/hkj"
  version "0.1.22"

  uses_from_macos "curl"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.22/hkj-0.1.22-macos-arm64.tar.gz"
      sha256 "dd57f98b609af3b7d1b332ab61fe3b1cb8b30ac1d995ee09c07b92f9cf3a90cc"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.22/hkj-0.1.22-macos-x86_64.tar.gz"
      sha256 "c0732f3fc9ccaaae619c1e2e7e9c4bb30b1b22ef7797e2bccbb64e0e79154b74"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.22/hkj-0.1.22-linux-arm64.tar.gz"
      sha256 "10831dbe2d73489fbc811a3180456bb13bbd3d87a97557003c7ecdfa7efbce00"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.22/hkj-0.1.22-linux-x86_64.tar.gz"
      sha256 "ff79dd3406c30199ffeac89861baa13db753b843d4ecb8ce0284e8352dca5ddf"
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
