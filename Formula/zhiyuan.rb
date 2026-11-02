class Zhiyuan < Formula
  desc "查已授权的高考志愿数据：省份，以及分数和位次的互换"
  homepage "https://zhiyuanwiki.com"
  version "0.1.7"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.7/zhiyuan-0.1.7-macos-arm64.tar.gz"
      sha256 "43ddd1c141bd0ec7ea7188cef1685e0d832dd0a28a41459336f7e42026124f9f"
    end
    on_intel do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.7/zhiyuan-0.1.7-macos-x86_64.tar.gz"
      sha256 "eb23654a8622aa71a142b35e5f024b3b70c323355cc357e2849875f57aae80ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.7/zhiyuan-0.1.7-linux-arm64.tar.gz"
      sha256 "61d3e8b3a20b112e2e8475af7ba52bc77159782a852c99b041188d3633157c01"
    end
    on_intel do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.7/zhiyuan-0.1.7-linux-x86_64.tar.gz"
      sha256 "b790b19cc946c27ad801c97bf4fb87188b6ee705e7cbf89d8ea57114a5591008"
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
