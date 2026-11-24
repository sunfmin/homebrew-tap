class Factorium < Formula
  desc "Runs AI coding agents on one machine while nobody watches"
  homepage "https://github.com/sunfmin/factorium"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/factorium-v0.1.107/factorium-0.1.107-macos-universal.tar.gz"
  sha256 "7dee39d73565d3c141b58de001071c9417b2774c3bc937698aa3a8fade05caed"
  version "0.1.107"

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
