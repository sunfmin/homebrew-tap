class Md2json < Formula
  desc "Markdown to JSON CLI (CommonMark + GFM via goldmark, mdast-style envelope)"
  homepage "https://github.com/sunfmin/md2json"
  version "0.2.0"

  on_macos do
    on_intel do
      url "https://github.com/sunfmin/md2json/releases/download/v0.2.0/md2json-darwin-amd64"
      sha256 "5e5e38035111e53727c65d6b04fc5974c27aa377ff3682dcd20f3dfdf9516b63"
    end
    on_arm do
      url "https://github.com/sunfmin/md2json/releases/download/v0.2.0/md2json-darwin-arm64"
      sha256 "4c0ad77170c5e81dabe45100dd36b66fdc851c6e5bbe4149e44b9cfa0be6101e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sunfmin/md2json/releases/download/v0.2.0/md2json-linux-amd64"
      sha256 "14b6ff47fb94edcf9c89e7e0d758d3b7f97191b9e61ae2f5fe3e4c8d372d6c80"
    end
    on_arm do
      url "https://github.com/sunfmin/md2json/releases/download/v0.2.0/md2json-linux-arm64"
      sha256 "78c015e7ead7d12368624ddc0608712bbe8a7a4b05c6851af0ba8965bf6e065f"
    end
  end

  def install
    binary = Dir["md2json-*"].first
    bin.install binary => "md2json"
  end

  test do
    assert_match "md2json #{version}", shell_output("#{bin}/md2json -V")
  end
end
