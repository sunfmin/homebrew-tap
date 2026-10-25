class Inspectvideo < Formula
  desc "Turns an online video into text a model can fully understand"
  homepage "https://github.com/sunfmin/inspectvideo"
  version "0.2.4"

  depends_on "ffmpeg"
  depends_on "llama.cpp"
  depends_on "whisper-cpp"
  depends_on "yt-dlp"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/inspectvideo-v0.2.4/inspectvideo-0.2.4-macos-arm64.tar.gz"
      sha256 "1ee04b761c1da06a0480d0cf3dddc675f6228c17b123c23fd62395ff0b6f3465"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/inspectvideo-v0.2.4/inspectvideo-0.2.4-macos-x86_64.tar.gz"
      sha256 "2d88b57f2e4c1bd46bd5f38540279b3747fc2cecf88b2ba22494d6ea1513e159"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/inspectvideo-v0.2.4/inspectvideo-0.2.4-linux-arm64.tar.gz"
      sha256 "114c853c5fb18dc94a5818f7f9933c6f4ea4fb3a826e69b8f3603512d83e5277"
    end
    on_intel do
      url "https://github.com/sunfmin/homebrew-tap/releases/download/inspectvideo-v0.2.4/inspectvideo-0.2.4-linux-x86_64.tar.gz"
      sha256 "ad2e75a12bcc9a4772f8ce596677e85da641a08100d6e607c607fe120371e362"
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
