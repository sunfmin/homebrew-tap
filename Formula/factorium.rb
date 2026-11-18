class Factorium < Formula
  desc "Runs AI coding agents on one machine while nobody watches"
  homepage "https://github.com/sunfmin/factorium"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/factorium-v0.1.18/factorium-0.1.18-macos-arm64.tar.gz"
  sha256 "0d843f8dfa811b153873ae0f97d48f053a3fdd35fb9ab4abf366feadd1b2c920"
  version "0.1.18"

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
