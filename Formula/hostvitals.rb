class Hostvitals < Formula
  desc "Read-only observations of a Mac and its processes for agents"
  homepage "https://github.com/sunfmin/hostvitals"
  version "0.1.7"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/hostvitals/releases/download/v0.1.7/hostvitals-0.1.7-macos-arm64.tar.gz"
    sha256 "6613402841acbdcfc497858daaa24d52caf26fcb12733b3d21d7269dd6504907"
  end
  on_intel do
    url "https://github.com/sunfmin/hostvitals/releases/download/v0.1.7/hostvitals-0.1.7-macos-x86_64.tar.gz"
    sha256 "cf34ca9bae0f2214bb7e135d494626e2dbebcb3ccff8ae49481b6568e29971f5"
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
