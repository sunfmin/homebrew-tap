class Hkj < Formula
  desc "Loads a Chanjet 好会计 backup into MySQL and answers questions about the books"
  homepage "https://github.com/sunfmin/hkj"
  version "0.1.9"

  uses_from_macos "curl"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.9/hkj-0.1.9-macos-arm64.tar.gz"
      sha256 "c75a62d424ce1f80291a2ed8c57cd0519aa187d5ae4ddba29f20cb72b668bafe"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.9/hkj-0.1.9-macos-x86_64.tar.gz"
      sha256 "b8d80857cf53d3541e519a21f6b6db4a19a29830c80f4a87fb1b83ad9c348ad3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.9/hkj-0.1.9-linux-arm64.tar.gz"
      sha256 "c259c40658d1d9ec6f28033a5a41e8a6dfc323caeef5807a2d3d65eb2837ec87"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/hkj-v0.1.9/hkj-0.1.9-linux-x86_64.tar.gz"
      sha256 "864f7436c62e456a1f7143a8f5a783d4611d6c38b294f699dcf1c4e3ff2b1b6b"
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
