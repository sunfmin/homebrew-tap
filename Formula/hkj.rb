class Hkj < Formula
  desc "Loads a Chanjet 好会计 backup into MySQL and answers questions about the books"
  homepage "https://github.com/sunfmin/hkj"
  version "0.1.18"

  uses_from_macos "curl"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.18/hkj-0.1.18-macos-arm64.tar.gz"
      sha256 "7191d553f4e5c1c7ccf9b10fd1c43e81409a62858764d9058ad7de3ae8337472"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.18/hkj-0.1.18-macos-x86_64.tar.gz"
      sha256 "d92c5e106577fef4898eae171c0985ddf8dfdee67ad7aa171269ecb288822e05"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.18/hkj-0.1.18-linux-arm64.tar.gz"
      sha256 "393d30c8d8bd348e365f97e9f919b273a62559aecb65ff931ce3b6a18fb458f0"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.18/hkj-0.1.18-linux-x86_64.tar.gz"
      sha256 "63e0a3a41c0087bbed5452793a33fb2327c994ab0c65403aa3b6c362d85c14fc"
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
