class Factorium < Formula
  desc "Runs AI coding agents on one machine while nobody watches"
  homepage "https://github.com/sunfmin/factorium"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/factorium-v0.1.116/factorium-0.1.116-macos-universal.tar.gz"
  sha256 "04de5be6154c4788cfba25a9d80c5ae68936d38c9f72cba5a86f98e8abb03c3e"
  version "0.1.116"

  depends_on :macos

  def install
    bin.install "factorium"
  end

  def caveats
    <<~EOS
      factorium starts its sessions through Orca:
        brew install --cask stablyai/orca/orca
      Engine accounts are stablehand's:
        brew install sunfmin/tap/stablehand
    EOS
  end

  test do
    assert_equal "factorium #{version}", shell_output("#{bin}/factorium --version").strip
  end
end
