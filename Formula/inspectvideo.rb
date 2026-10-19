class Inspectvideo < Formula
  desc "Turns an online video into text a model can fully understand"
  homepage "https://github.com/sunfmin/inspectvideo"
  version "0.2.1"

  depends_on "ffmpeg"
  depends_on "llama.cpp"
  depends_on "whisper-cpp"
  depends_on "yt-dlp"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/inspectvideo-v0.2.1/inspectvideo-0.2.1-macos-arm64.tar.gz"
      sha256 "ac16473b51126ee3f7ba63207e2e7629af75eb96822c1d58b44ced8b96aaeffa"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/inspectvideo-v0.2.1/inspectvideo-0.2.1-macos-x86_64.tar.gz"
      sha256 "f4f38b056d7535b54681d60af861268a63a24234aae132eccb52310842af2f34"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/inspectvideo-v0.2.1/inspectvideo-0.2.1-linux-arm64.tar.gz"
      sha256 "e2ca03981bea730b7e15c3980a97c1b3177a9c15587732a8e0672c7ca8d7bb92"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/inspectvideo-v0.2.1/inspectvideo-0.2.1-linux-x86_64.tar.gz"
      sha256 "6a9418d225a44490afaf49756d5607f923125b625ebdf43d5eee2f5016d8573a"
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
