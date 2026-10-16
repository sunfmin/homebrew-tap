class Hkj < Formula
  desc "Loads a Chanjet 好会计 backup into MySQL and answers questions about the books"
  homepage "https://github.com/sunfmin/hkj"
  version "0.1.14"

  uses_from_macos "curl"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.14/hkj-0.1.14-macos-arm64.tar.gz"
      sha256 "c4b8c8e8c79bcc4d73ba90a910afd3a2be5adb681e58abc2aa8f1ecb3ef54374"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.14/hkj-0.1.14-macos-x86_64.tar.gz"
      sha256 "0384f192344bd2885a844854ffe2963a05a4f46b2ab7b7c51441ca016bae86da"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.14/hkj-0.1.14-linux-arm64.tar.gz"
      sha256 "e0f25344f437428372135a6397a3b8c014f14d0997762a249c06f0889a13a6e8"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.14/hkj-0.1.14-linux-x86_64.tar.gz"
      sha256 "003d43a77398bc394b83b2367a854ce8f99904b9c5b7b984771157f3a610deea"
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
