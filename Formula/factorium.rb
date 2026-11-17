class Factorium < Formula
  desc "Runs AI coding agents on one machine while nobody watches"
  homepage "https://github.com/sunfmin/factorium"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/factorium-v0.1.0/factorium-0.1.0-macos-arm64.tar.gz"
  sha256 "75101c34c63b54548641e889454878f7540b348dec6f4f4fe755e83107481a41"
  version "0.1.0"

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
