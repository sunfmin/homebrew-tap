class Hkj < Formula
  desc "Loads a Chanjet 好会计 backup into MySQL and answers questions about the books"
  homepage "https://github.com/sunfmin/hkj"
  version "0.1.7"

  uses_from_macos "curl"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.7/hkj-0.1.7-macos-arm64.tar.gz"
      sha256 "db4b7c021e3d6ee2e0fc11886f3fde6573c83fd55bead3270212c269677a4153"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.7/hkj-0.1.7-macos-x86_64.tar.gz"
      sha256 "65a75e97ed116aff23c0850a2ed230b5ec0969bc1565b2f7a89bbb03b688466d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.7/hkj-0.1.7-linux-arm64.tar.gz"
      sha256 "a1cf479dae73a480dfc4c17624edd321f8e327aa4ed40dcbc2448d95e30a1ed3"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.7/hkj-0.1.7-linux-x86_64.tar.gz"
      sha256 "a7f867e5cda5a8f476638f7b3e61f91da581612932e805cbcd76fb6699bd7470"
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
