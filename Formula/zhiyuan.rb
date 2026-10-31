class Zhiyuan < Formula
  desc "查已授权的高考志愿数据：省份，以及分数和位次的互换"
  homepage "https://zhiyuanwiki.com"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.0/zhiyuan-0.1.0-macos-arm64.tar.gz"
      sha256 "e7e4be8ac2a7341469a511b6b6f6c03728a424411c240939d25683ad70be9a4b"
    end
    on_intel do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.0/zhiyuan-0.1.0-macos-x86_64.tar.gz"
      sha256 "0dd041907b0fa6a7e96165d450ebd54c433f616abc8850adf50a6d2dc6aa7788"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.0/zhiyuan-0.1.0-linux-arm64.tar.gz"
      sha256 "6d791bd4af622890c7b9ee1e58a7753228e45ba930edb85c70e78dda7ac7a9d1"
    end
    on_intel do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.0/zhiyuan-0.1.0-linux-x86_64.tar.gz"
      sha256 "455d12acf1b408d7101a6ca553a7f61ce59e7054f2baac745785ccacc4435c79"
    end
  end

  def install
    bin.install "zhiyuan"
  end

  def caveats
    <<~EOS
      然后 `export ZHIYUAN_LICENSE=<授权码>`。不要把授权码放在命令行上。第一次运行要能连上授权服务。把 `zhiyuan skill` 印出的文字存成 `~/.agents/skills/zhiyuan/SKILL.md`。
    EOS
  end

  test do
    require "json"
    assert_equal version.to_s, JSON.parse(shell_output("#{bin}/zhiyuan --version"))["version"]
  end
end
