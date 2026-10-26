class Hostvitals < Formula
  desc "Read-only observations of a Mac and its processes for agents"
  homepage "https://github.com/sunfmin/hostvitals"
  version "0.1.1"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/hostvitals/releases/download/v0.1.1/hostvitals-0.1.1-macos-arm64.tar.gz"
    sha256 "e0cac33de72d9f47e00d694dcbf54d54a47fc30ef668f6be27dafdfb74df30cd"
  end
  on_intel do
    url "https://github.com/sunfmin/hostvitals/releases/download/v0.1.1/hostvitals-0.1.1-macos-x86_64.tar.gz"
    sha256 "ec528d4ed210cd9e837c7ecf80ad514c6169ea18c677da37a29ca1b82afbbcdb"
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
