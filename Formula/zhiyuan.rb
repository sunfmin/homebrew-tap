class Zhiyuan < Formula
  desc "查已授权的高考志愿数据：省份，以及分数和位次的互换"
  homepage "https://zhiyuanwiki.com"
  version "0.1.6"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.6/zhiyuan-0.1.6-macos-arm64.tar.gz"
      sha256 "f7301558f114f23b809e4a46072db1a6d017c07df3af4aafed80f27c62d5e5cb"
    end
    on_intel do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.6/zhiyuan-0.1.6-macos-x86_64.tar.gz"
      sha256 "aa360034cb515691b596b3c15ada9add58519029daa3ec8d2b5d55efeda39b0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.6/zhiyuan-0.1.6-linux-arm64.tar.gz"
      sha256 "3af62a05cdeb94e31fb89a4c32942e8a6fdb24d2fa663d8443c4dfe7d896b98e"
    end
    on_intel do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.6/zhiyuan-0.1.6-linux-x86_64.tar.gz"
      sha256 "6adca3c00a492e88fbaca3c5c4407c70f11811f231cfdc3b0d50470fd469103a"
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
