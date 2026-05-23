class Md2json < Formula
  desc "Markdown to JSON CLI (CommonMark + GFM via goldmark, mdast-style envelope)"
  homepage "https://github.com/sunfmin/md2json"
  version "0.1.0"

  on_macos do
    on_intel do
      url "https://github.com/sunfmin/md2json/releases/download/v0.1.0/md2json-darwin-amd64"
      sha256 "55f5451b54a0392ba5f868429ff125881119036455b8004bb5f9b49ec9eba7b5"
    end
    on_arm do
      url "https://github.com/sunfmin/md2json/releases/download/v0.1.0/md2json-darwin-arm64"
      sha256 "480e67bd89475c39229329428c27f5c2b7e3ab862dec992a3c8b69bf67f4c5e4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sunfmin/md2json/releases/download/v0.1.0/md2json-linux-amd64"
      sha256 "7da961dd8b966f93cebeb5cad6d89f3e2179b849424911fca7a599741dc48f5f"
    end
    on_arm do
      url "https://github.com/sunfmin/md2json/releases/download/v0.1.0/md2json-linux-arm64"
      sha256 "6f1b2411ac930d9db4e9f7cae2f9437eee80dacbe246f5ad6067f9112f056a6e"
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
