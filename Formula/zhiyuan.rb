class Zhiyuan < Formula
  desc "查已授权的高考志愿数据：省份，以及分数和位次的互换"
  homepage "https://zhiyuanwiki.com"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.3/zhiyuan-0.1.3-macos-arm64.tar.gz"
      sha256 "aa5346dd9969c203b1cb66c22eadd63ac17b40c1ae923da08c23d7393df4d128"
    end
    on_intel do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.3/zhiyuan-0.1.3-macos-x86_64.tar.gz"
      sha256 "454449a7b820f36c8c7ade69ce192d31a31610116bebf43614cdc0f9d411aad9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.3/zhiyuan-0.1.3-linux-arm64.tar.gz"
      sha256 "c82d16ed96c4fd1ed43a2552025352655a52e55fd4acb81e92329a206691ba2a"
    end
    on_intel do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.3/zhiyuan-0.1.3-linux-x86_64.tar.gz"
      sha256 "c2cb59818868f39f7844aef167f56af8e4be199b8b4e10ecf19ac1c8b846248b"
    end
  end

  def install
    bin.install "zhiyuan"
  end

  def caveats
    <<~EOS
      然后跑 `zhiyuan buy` 买授权码，付完这台机器就能用。已经有授权码就跑 `zhiyuan unlock`。不要把授权码放在命令行上。第一次运行要能连上授权服务。把 `zhiyuan skill` 印出的文字存成 `~/.agents/skills/zhiyuan/SKILL.md`。
    EOS
  end

  test do
    require "json"
    assert_equal version.to_s, JSON.parse(shell_output("#{bin}/zhiyuan --version"))["version"]
  end
end
