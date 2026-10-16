class Hkj < Formula
  desc "Loads a Chanjet 好会计 backup into MySQL and answers questions about the books"
  homepage "https://github.com/sunfmin/hkj"
  version "0.1.17"

  uses_from_macos "curl"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.17/hkj-0.1.17-macos-arm64.tar.gz"
      sha256 "3aedb193602602c4db23499f9009a6b28b57132605d9c0cab88a705d5213e6f4"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.17/hkj-0.1.17-macos-x86_64.tar.gz"
      sha256 "cf3ce030d400c129086937d0aafeb12948d59e52ea413b4432b45497d27ffb9b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.17/hkj-0.1.17-linux-arm64.tar.gz"
      sha256 "40bb0b6cece53cc774c7938f5e3ec68d27c0ecf27b0ac7073ea54903ea8b67ca"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.17/hkj-0.1.17-linux-x86_64.tar.gz"
      sha256 "09450cb500f46006d66f7b39576ed8829f00547c9fdda5ab75d9a93ef2ac45c1"
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
