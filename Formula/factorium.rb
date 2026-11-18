class Factorium < Formula
  desc "Runs AI coding agents on one machine while nobody watches"
  homepage "https://github.com/sunfmin/factorium"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/factorium-v0.1.26/factorium-0.1.26-macos-arm64.tar.gz"
  sha256 "d5783eaa793c0faf711c48c1409e9c6f3b807da47e75046a89b21c9b8fc083ee"
  version "0.1.26"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "factorium"
  end

  def caveats
    <<~EOS
      factorium starts its sessions through Orca:
        brew install --cask stablyai/orca/orca
      Engine accounts are read from mytokens.
    EOS
  end

  test do
    assert_equal "factorium #{version}", shell_output("#{bin}/factorium --version").strip
  end
end
