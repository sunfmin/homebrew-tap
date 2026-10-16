class Hkj < Formula
  desc "Loads a Chanjet 好会计 backup into MySQL and answers questions about the books"
  homepage "https://github.com/sunfmin/hkj"
  version "0.1.6"

  uses_from_macos "curl"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.6/hkj-0.1.6-macos-arm64.tar.gz"
      sha256 "ad3ac03374fefcfb2c1d69a11b1a1c64f336ed7100770e71deb54130287c475a"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.6/hkj-0.1.6-macos-x86_64.tar.gz"
      sha256 "64c121819355f17f8cde5a2d639427e3cec938bfc2e552bcc8b3c22d4bb9d408"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.6/hkj-0.1.6-linux-arm64.tar.gz"
      sha256 "11d999b05ed36d23ed586244dc06167cbb23c77b4ae729be07388a52ec3a889d"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.6/hkj-0.1.6-linux-x86_64.tar.gz"
      sha256 "419a58474f6f7de77b2fac82857c27c9b3218031fb98d1450f8c1f1816631617"
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
