class Zhiyuan < Formula
  desc "查已授权的高考志愿数据：省份，以及分数和位次的互换"
  homepage "https://zhiyuanwiki.com"
  version "0.1.8"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.8/zhiyuan-0.1.8-macos-arm64.tar.gz"
      sha256 "e66203017d3954e5a34f824daa74bffa26c9007b27659c155f77c5465c78d1de"
    end
    on_intel do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.8/zhiyuan-0.1.8-macos-x86_64.tar.gz"
      sha256 "1c431a74a9595c33767bccedcab8f9711d8d38dfa4e274d5c4e30d175766fabc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.8/zhiyuan-0.1.8-linux-arm64.tar.gz"
      sha256 "41602eea0b9e46525919c0c54a667093625366cdde6bcbb7d85b97f4d041503b"
    end
    on_intel do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.8/zhiyuan-0.1.8-linux-x86_64.tar.gz"
      sha256 "20b5425e15043abf815585809ac7d56966972da3c8f87de3f267c20e25d06978"
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
