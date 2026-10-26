class Hostvitals < Formula
  desc "Read-only observations of a Mac and its processes for agents"
  homepage "https://github.com/sunfmin/hostvitals"
  version "0.1.3"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/hostvitals/releases/download/v0.1.3/hostvitals-0.1.3-macos-arm64.tar.gz"
    sha256 "34bde6befd90163cc65419ec8548e92a4267ba2a47ee6e4d511731a4598e057d"
  end
  on_intel do
    url "https://github.com/sunfmin/hostvitals/releases/download/v0.1.3/hostvitals-0.1.3-macos-x86_64.tar.gz"
    sha256 "2a1a87377a11eb267095141919955f7741dc1f2606367173b99dfc0ca6a32543"
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
