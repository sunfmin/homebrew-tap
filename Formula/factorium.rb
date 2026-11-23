class Factorium < Formula
  desc "Runs AI coding agents on one machine while nobody watches"
  homepage "https://github.com/sunfmin/factorium"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/factorium-v0.1.101/factorium-0.1.101-macos-universal.tar.gz"
  sha256 "b0b1938bc0bb10a79e6f5d521bfe2129f780341b0a9a457d4732ab2035788056"
  version "0.1.101"

  depends_on :macos

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
