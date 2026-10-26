class Hostvitals < Formula
  desc "Read-only observations of a Mac and its processes for agents"
  homepage "https://github.com/sunfmin/hostvitals"
  version "0.1.0"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/hostvitals/releases/download/v0.1.0/hostvitals-0.1.0-macos-arm64.tar.gz"
    sha256 "26e60acf0f06bb4ac9b7d467420c6a3901d982d78a1eb1569c41ed6924d2a038"
  end
  on_intel do
    url "https://github.com/sunfmin/hostvitals/releases/download/v0.1.0/hostvitals-0.1.0-macos-x86_64.tar.gz"
    sha256 "1569485c31a436dfe898788b75a222375007a1abf567161c6ef39b6742788a2a"
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
