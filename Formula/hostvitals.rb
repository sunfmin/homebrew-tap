class Hostvitals < Formula
  desc "Read-only observations of a Mac and its processes for agents"
  homepage "https://github.com/sunfmin/hostvitals"
  version "0.1.2"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/hostvitals/releases/download/v0.1.2/hostvitals-0.1.2-macos-arm64.tar.gz"
    sha256 "62199c8bb74e76f124860ebd049d7ba40ae5dddf8121302e1c825f4479e06465"
  end
  on_intel do
    url "https://github.com/sunfmin/hostvitals/releases/download/v0.1.2/hostvitals-0.1.2-macos-x86_64.tar.gz"
    sha256 "3a09e01e34d8ee847593ee69dfffb85ebe5aee0e72ac41848c05987050843daf"
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
