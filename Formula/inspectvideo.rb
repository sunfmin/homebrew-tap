class Inspectvideo < Formula
  desc "Turns an online video into text a model can fully understand"
  homepage "https://github.com/sunfmin/inspectvideo"
  version "0.2.3"

  depends_on "ffmpeg"
  depends_on "llama.cpp"
  depends_on "whisper-cpp"
  depends_on "yt-dlp"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/inspectvideo-v0.2.3/inspectvideo-0.2.3-macos-arm64.tar.gz"
      sha256 "f2e81966b9ba949c4e5ef8f3f10bd3213a32cff870dfd813ff3e851180b8fccb"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/inspectvideo-v0.2.3/inspectvideo-0.2.3-macos-x86_64.tar.gz"
      sha256 "9b8edb63047715083b8a85db95995da4588db6b247658abf11972214beacb5a1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/inspectvideo-v0.2.3/inspectvideo-0.2.3-linux-arm64.tar.gz"
      sha256 "31c8ef80b45895891eb0ddd4a6a6f1a8db887d1bfb0d964d8665babd772d9001"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/inspectvideo-v0.2.3/inspectvideo-0.2.3-linux-x86_64.tar.gz"
      sha256 "da8572e1428155b4a9fd4b2af424403c08c13e57f1a984fa39aff881cb2c8ec6"
    end
  end

  def install
    bin.install "inspectvideo"
  end

  def caveats
    <<~EOS
      inspectvideo downloads no model weights: each must be in the Hugging
      Face cache before a Video is processed, fetched once (~11GB) with
      `hf download`. Get the Hugging Face CLI, then run
        brew install hf
        inspectvideo doctor
      doctor names the exact `hf download <repo> <file>` line of every
      model that is missing.
    EOS
  end

  test do
    assert_equal "inspectvideo #{version}", shell_output("#{bin}/inspectvideo --version").strip
  end
end
