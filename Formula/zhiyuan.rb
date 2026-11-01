class Zhiyuan < Formula
  desc "查已授权的高考志愿数据：省份，以及分数和位次的互换"
  homepage "https://zhiyuanwiki.com"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.4/zhiyuan-0.1.4-macos-arm64.tar.gz"
      sha256 "6fd2d1ed411f46825ed077dd7455d1a624b73eefd9f0cb7deb69eb155fbf1e3c"
    end
    on_intel do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.4/zhiyuan-0.1.4-macos-x86_64.tar.gz"
      sha256 "6fa1ba278079e9a3763f0754b62811c1f169a30922eeb36def0d453828351f62"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.4/zhiyuan-0.1.4-linux-arm64.tar.gz"
      sha256 "bad379adcee8b4e8d5db819662e0bc156ddf0dca425fed48e2b606fb0fef0533"
    end
    on_intel do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.4/zhiyuan-0.1.4-linux-x86_64.tar.gz"
      sha256 "07449871bc3153f19f93c3889d84f96c5f60d3524092eded2af45487461aeb3a"
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
