class Hostvitals < Formula
  desc "Read-only observations of a Mac and its processes for agents"
  homepage "https://github.com/sunfmin/hostvitals"
  version "0.1.5"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/hostvitals/releases/download/v0.1.5/hostvitals-0.1.5-macos-arm64.tar.gz"
    sha256 "1375c11721e22e45d8be7fbed41a74463f58eaa11e87e0fbce4b9a28bf233e5c"
  end
  on_intel do
    url "https://github.com/sunfmin/hostvitals/releases/download/v0.1.5/hostvitals-0.1.5-macos-x86_64.tar.gz"
    sha256 "ec6c629101c9c9d6210ae58e59cfc6592fcc0041d5c1c338a504aa8bfaf343f2"
  end

  def install
    bin.install "hostvitals"
  end

  def caveats
    <<~EOS
      Some measurements need root and are skipped without it.
      hostvitals never runs sudo itself; skipped measurements name the command
      you can choose to run. Start with `hostvitals --help`, then
      `hostvitals doctor` to check this Mac's observation capabilities.
    EOS
  end

  test do
    assert_equal "hostvitals #{version}", shell_output("#{bin}/hostvitals --version").strip
  end
end
