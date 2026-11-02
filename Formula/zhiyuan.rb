class Zhiyuan < Formula
  desc "查已授权的高考志愿数据：省份，以及分数和位次的互换"
  homepage "https://zhiyuanwiki.com"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.5/zhiyuan-0.1.5-macos-arm64.tar.gz"
      sha256 "c8bfcb6feff750672d281d0fb5257704f3f2e662ef89815bc262133b7f54c019"
    end
    on_intel do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.5/zhiyuan-0.1.5-macos-x86_64.tar.gz"
      sha256 "dc0862f310c858ca6924680534519937d287d2b4707a4ecaa1c7d984b73f19e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.5/zhiyuan-0.1.5-linux-arm64.tar.gz"
      sha256 "e562719f25b877b5c93c3278b78f34701761e04dc2446d1918be85d871030380"
    end
    on_intel do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.5/zhiyuan-0.1.5-linux-x86_64.tar.gz"
      sha256 "f2c8406e806373bcd68b39fbd2a7818d27d1df9c33c0d784cd9af96a47684f3b"
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
