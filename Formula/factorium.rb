class Factorium < Formula
  desc "Runs AI coding agents on one machine while nobody watches"
  homepage "https://github.com/sunfmin/factorium"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/factorium-v0.1.155/factorium-0.1.155-macos-universal.tar.gz"
  sha256 "1cc3fd75f9a0df719f3c759fd4efb8a6b3d330b64a96ba138f7804c34b507c29"
  version "0.1.155"

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
