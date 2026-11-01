class Zhiyuan < Formula
  desc "查已授权的高考志愿数据：省份，以及分数和位次的互换"
  homepage "https://zhiyuanwiki.com"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.2/zhiyuan-0.1.2-macos-arm64.tar.gz"
      sha256 "2959ddedeac3f5575caba72db0c482793f6090b3ee30b23bd15bba6161a9c1e7"
    end
    on_intel do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.2/zhiyuan-0.1.2-macos-x86_64.tar.gz"
      sha256 "d9ae09df043de0e4684b836a607c22b5b697334f0625f50d1e4683b77c55b9d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.2/zhiyuan-0.1.2-linux-arm64.tar.gz"
      sha256 "f0b2e3889a1a865bd705656e1499ff55dd3269e832d309177602b313b526aba1"
    end
    on_intel do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.2/zhiyuan-0.1.2-linux-x86_64.tar.gz"
      sha256 "4dc37734ce4e5dfcaf4e2d85a5dc283a5d7dcdcbdc0c34cbc894ed67d017c9e6"
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
