class Hkj < Formula
  desc "Loads a Chanjet 好会计 backup into MySQL and answers questions about the books"
  homepage "https://github.com/sunfmin/hkj"
  version "0.1.11"

  uses_from_macos "curl"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.11/hkj-0.1.11-macos-arm64.tar.gz"
      sha256 "dc32e8db4d271e9368f4f4805605003705a220ad8350290ec392b28ffd3e6143"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.11/hkj-0.1.11-macos-x86_64.tar.gz"
      sha256 "4d49c79eb36442bebc5a395dcd89cacd14369f22b5b6187ce7be3844d3cb807f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.11/hkj-0.1.11-linux-arm64.tar.gz"
      sha256 "f06c6cb972b1030003f7b12a53a5bdf63d8584252b775e215940e5788a078d23"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.11/hkj-0.1.11-linux-x86_64.tar.gz"
      sha256 "3715a9db806a1e1eba2cbc2997c2a9f20cf89ca4fa93e2a2aa91948b95bcc6eb"
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
