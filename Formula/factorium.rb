class Factorium < Formula
  desc "Runs AI coding agents on one machine while nobody watches"
  homepage "https://github.com/sunfmin/factorium"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/factorium-v0.1.118/factorium-0.1.118-macos-universal.tar.gz"
  sha256 "a6e66ea568b39304c6138ceb45bbf672ced5343223d5072dc2785dd038547831"
  version "0.1.118"

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
