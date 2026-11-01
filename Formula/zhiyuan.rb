class Zhiyuan < Formula
  desc "查已授权的高考志愿数据：省份，以及分数和位次的互换"
  homepage "https://zhiyuanwiki.com"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.3/zhiyuan-0.1.3-macos-arm64.tar.gz"
      sha256 "9ace71a3b110fcae15a48a2893a4c87516a47173738478b2e50e478facb21047"
    end
    on_intel do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.3/zhiyuan-0.1.3-macos-x86_64.tar.gz"
      sha256 "e0b5647584d9faf0963a6cd1aef17743d6ff44df4955dda00d7909afa0c0dabd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.3/zhiyuan-0.1.3-linux-arm64.tar.gz"
      sha256 "cd223f46088cc6f8b17dce91a78348402c0af86e027de5203dd64d060bb3bfa4"
    end
    on_intel do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.3/zhiyuan-0.1.3-linux-x86_64.tar.gz"
      sha256 "c9a8e81ed6243ef0d01cb9bfe4c6287b3e40ef058309913d33e5e1e29e5e8af8"
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
