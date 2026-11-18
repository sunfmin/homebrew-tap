class Factorium < Formula
  desc "Runs AI coding agents on one machine while nobody watches"
  homepage "https://github.com/sunfmin/factorium"
  url "https://github.com/sunfmin/homebrew-tap/releases/download/factorium-v0.1.32/factorium-0.1.32-macos-arm64.tar.gz"
  sha256 "8d1185c858c996c13b2828d3470fef9d0a3461cc22e0e220ba6874cefb4c3c28"
  version "0.1.32"

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
