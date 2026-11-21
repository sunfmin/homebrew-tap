class Factorium < Formula
  desc "Runs AI coding agents on one machine while nobody watches"
  homepage "https://github.com/sunfmin/factorium"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/factorium-v0.1.59/factorium-0.1.59-macos-arm64.tar.gz"
  sha256 "3f2b678abe6f7e47011e260e797e6fbf8bd4da0e2efad8ad32628aa1c4d9c2cd"
  version "0.1.59"

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
