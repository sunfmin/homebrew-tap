class Hkj < Formula
  desc "Loads a Chanjet 好会计 backup into MySQL and answers questions about the books"
  homepage "https://github.com/sunfmin/hkj"
  version "0.1.2"

  uses_from_macos "curl"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.2/hkj-0.1.2-macos-arm64.tar.gz"
      sha256 "5516cccd62dc969e9487a686a68e08df3f6550ff47da860c7460d79c2404f0da"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.2/hkj-0.1.2-macos-x86_64.tar.gz"
      sha256 "1e5eb2a74393264e1624a10889ee9fecc840f952ad0c2d3539b51ffd4194ba50"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.2/hkj-0.1.2-linux-arm64.tar.gz"
      sha256 "aaa531d6db71f1240b1939bd13adb8912d5391571db4ed08984f81c63dc5e0c5"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.2/hkj-0.1.2-linux-x86_64.tar.gz"
      sha256 "1b89f4dc7cf2d7669cbf333b7c03670b3e12c77702cd44ac947205309bc986ad"
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
