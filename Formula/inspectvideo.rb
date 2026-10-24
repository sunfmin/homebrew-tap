class Inspectvideo < Formula
  desc "Turns an online video into text a model can fully understand"
  homepage "https://github.com/sunfmin/inspectvideo"
  version "0.2.2"

  depends_on "ffmpeg"
  depends_on "llama.cpp"
  depends_on "whisper-cpp"
  depends_on "yt-dlp"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/inspectvideo-v0.2.2/inspectvideo-0.2.2-macos-arm64.tar.gz"
      sha256 "b2f9b858b6b390a174b25e5a4148a755db14ddffa71050d355f7bad6a9d1fb6d"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/inspectvideo-v0.2.2/inspectvideo-0.2.2-macos-x86_64.tar.gz"
      sha256 "9670795f58905706dfe56469cf1786842914065b0b8835ec18e181a2f53e09ba"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/inspectvideo-v0.2.2/inspectvideo-0.2.2-linux-arm64.tar.gz"
      sha256 "24ae453a7c31cbe06bb749d4fe797e5f8f8e3e8cdf38809ab6dfb1bf5fa34160"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/inspectvideo-v0.2.2/inspectvideo-0.2.2-linux-x86_64.tar.gz"
      sha256 "feb03123f2ec9f73365fe42af34996488683a2c3acfdc446196ac704369f02d5"
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
