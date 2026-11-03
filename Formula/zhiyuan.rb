class Zhiyuan < Formula
  desc "查已授权的高考志愿数据：省份，以及分数和位次的互换"
  homepage "https://zhiyuanwiki.com"
  version "0.1.9"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.9/zhiyuan-0.1.9-macos-arm64.tar.gz"
      sha256 "5cd5f8ba59f7b204350c425aa70407d3925354f1b2f6c5bd49c31b883aaeac2f"
    end
    on_intel do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.9/zhiyuan-0.1.9-macos-x86_64.tar.gz"
      sha256 "929c7e540f2e5c1f36d35b5cf3e6cb99368fccf470889e1fc7d461ad2a5db9aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.9/zhiyuan-0.1.9-linux-arm64.tar.gz"
      sha256 "ba71e0b62bd9bf211da988602dfb6f8db062260817655b0acec76c602c420af7"
    end
    on_intel do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.9/zhiyuan-0.1.9-linux-x86_64.tar.gz"
      sha256 "81dbe7a82497980532799be4df1d374b7eda77ab1d494852f8e62d8a0ba7c286"
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
