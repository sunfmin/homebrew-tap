class Zhiyuan < Formula
  desc "查已授权的高考志愿数据：省份，以及分数和位次的互换"
  homepage "https://zhiyuanwiki.com"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.2/zhiyuan-0.1.2-macos-arm64.tar.gz"
      sha256 "792e6a0b363f36d558bbdde4ea5f2228a162ce26a55aa567d661124d1c92d593"
    end
    on_intel do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.2/zhiyuan-0.1.2-macos-x86_64.tar.gz"
      sha256 "6644f14110b68e2eb0bfb48cf628ac6890217522c0adbb0819707f0e8688c59c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.2/zhiyuan-0.1.2-linux-arm64.tar.gz"
      sha256 "6e2775dab7ab8413f37bfe51a1fa5e610542a77da3ad3a149bdfcc5604edbac7"
    end
    on_intel do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.2/zhiyuan-0.1.2-linux-x86_64.tar.gz"
      sha256 "e3240a9c67b8df01c1fb995d9a482956ced35a9ed1733a6ef148dc971e89e9b6"
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
