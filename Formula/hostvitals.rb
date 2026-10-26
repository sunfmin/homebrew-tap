class Hostvitals < Formula
  desc "Read-only observations of a Mac and its processes for agents"
  homepage "https://github.com/sunfmin/hostvitals"
  version "0.1.4"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/hostvitals/releases/download/v0.1.4/hostvitals-0.1.4-macos-arm64.tar.gz"
    sha256 "7a4e98d29ed75268c3853d4ba67e0ed53166c102f84cf6b4e04048f692ba8601"
  end
  on_intel do
    url "https://github.com/sunfmin/hostvitals/releases/download/v0.1.4/hostvitals-0.1.4-macos-x86_64.tar.gz"
    sha256 "8c641f25af72f409727109263781916170cf1c155accf1d2b27460e0196826a8"
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
