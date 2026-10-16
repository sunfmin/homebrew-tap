class Hkj < Formula
  desc "Loads a Chanjet 好会计 backup into MySQL and answers questions about the books"
  homepage "https://github.com/sunfmin/hkj"
  version "0.1.4"

  uses_from_macos "curl"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.4/hkj-0.1.4-macos-arm64.tar.gz"
      sha256 "c27b651704f70283efdb2316a75cf3a68b203e3be6b68708196b6156f5ed907f"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.4/hkj-0.1.4-macos-x86_64.tar.gz"
      sha256 "939653f550c2828a0d94207db275ebfe2ec91e4f359bfa5c7bf1241ac343701e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.4/hkj-0.1.4-linux-arm64.tar.gz"
      sha256 "bfedc7bdba2b769171bf84080991d3f23e6e6e35c191b4ec3e3f90e793cd51c2"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.4/hkj-0.1.4-linux-x86_64.tar.gz"
      sha256 "de543e14c0723063615dca59b5c5d474ed8f036c500ceee60bec141f09f34ef9"
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
