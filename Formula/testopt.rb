class Testopt < Formula
  desc "Find where a cargo-nextest suite's time goes, and check a faster suite kept its coverage"
  homepage "https://github.com/sunfmin/testopt"
  version "0.1.0"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/testopt/releases/download/v0.1.0/testopt-0.1.0-macos-arm64.tar.gz"
    sha256 "5d69c0224d077af9690c879ca84b53f135bf46cb7681bfce38ebf5bb1196053e"
  end
  on_intel do
    url "https://github.com/sunfmin/testopt/releases/download/v0.1.0/testopt-0.1.0-macos-x86_64.tar.gz"
    sha256 "2e763c7d095b7c368b79d19cc5c909a3b946033852350dd942eef00b2f5dff88"
  end

  def install
    bin.install "testopt"
  end

  def caveats
    <<~EOS
      testopt drives the target workspace's own cargo. Every command needs
      cargo-nextest; covers and check also need cargo-llvm-cov and llvm-tools:
        cargo install cargo-nextest --locked
        cargo install cargo-llvm-cov --version 0.9.1 --locked
        rustup component add llvm-tools
      --tmux needs tmux.
    EOS
  end

  test do
    assert_equal "testopt #{version}", shell_output("#{bin}/testopt --version").strip
  end
end
