class Hostvitals < Formula
  desc "Read-only observations of a Mac and its processes for agents"
  homepage "https://github.com/sunfmin/hostvitals"
  version "0.1.6"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/hostvitals/releases/download/v0.1.6/hostvitals-0.1.6-macos-arm64.tar.gz"
    sha256 "7feb7500f01a8e8e42700298455116841d5b2cd880659730f2253d946adfbfc0"
  end
  on_intel do
    url "https://github.com/sunfmin/hostvitals/releases/download/v0.1.6/hostvitals-0.1.6-macos-x86_64.tar.gz"
    sha256 "2bdd548c2c035c2ced21e20add4b0d683dbe74e1f7a47d6d2657665eafa8ad1c"
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
