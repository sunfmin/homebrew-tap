class Hkj < Formula
  desc "Loads a Chanjet 好会计 backup into MySQL and answers questions about the books"
  homepage "https://github.com/sunfmin/hkj"
  version "0.1.16"

  uses_from_macos "curl"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.16/hkj-0.1.16-macos-arm64.tar.gz"
      sha256 "56449d53ee66020d5f0c5740e8fea41e721409228b4e0859996d9238dcfc680f"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.16/hkj-0.1.16-macos-x86_64.tar.gz"
      sha256 "ef0537c3991c5ae8d727bbb3a0de40c59d35d631f97b8b9124e6507a106ce1aa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.16/hkj-0.1.16-linux-arm64.tar.gz"
      sha256 "341214e655a54ae1e69831d76302b8addf2ce47f812e898ee7c58d626a6f908e"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.16/hkj-0.1.16-linux-x86_64.tar.gz"
      sha256 "f553adfe654c0ab8d125342506ceac800d7377884c3816eee381296d9094864d"
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
