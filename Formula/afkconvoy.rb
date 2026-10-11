class Afkconvoy < Formula
  desc "Fleet of AFK coding agents that works a GitHub backlog"
  homepage "https://github.com/sunfmin/afkconvoy"
  version "0.1.0"

  depends_on "gh"
  depends_on "git"
  depends_on :macos

  on_arm do
    url "https://github.com/sunfmin/afkconvoy/releases/download/v0.1.0/afkconvoy-0.1.0-macos-arm64.tar.gz"
    sha256 "835c3533974be1a9e07252fe41c8a3bd55d9493429993e34aed673529470e668"
  end
  on_intel do
    url "https://github.com/sunfmin/afkconvoy/releases/download/v0.1.0/afkconvoy-0.1.0-macos-x86_64.tar.gz"
    sha256 "b341fbd71dd93695732412736dc28bd4e697eb760c6b531528610f270573a383"
  end

  def install
    bin.install "afkconvoy"
  end

  def caveats
    <<~EOS
      afkconvoy starts its workers through orca, which Homebrew does not
      install: get it from https://github.com/stablyai/orca and make sure
      `orca` is on your PATH. `gh` must be logged in (`gh auth login`).
    EOS
  end

  test do
    assert_equal "afkconvoy #{version}", shell_output("#{bin}/afkconvoy --version").strip
  end
end
