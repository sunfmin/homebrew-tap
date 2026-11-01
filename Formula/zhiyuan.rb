class Zhiyuan < Formula
  desc "查已授权的高考志愿数据：省份，以及分数和位次的互换"
  homepage "https://zhiyuanwiki.com"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.1/zhiyuan-0.1.1-macos-arm64.tar.gz"
      sha256 "76afb0554bf7219e94b2929dfd745be1cf0c49025ccfb48263adbd2c020fe788"
    end
    on_intel do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.1/zhiyuan-0.1.1-macos-x86_64.tar.gz"
      sha256 "56a432db6fd83445b4e50c031e18f49ab66af4e8e9c95e619f5392da06b89ffe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.1/zhiyuan-0.1.1-linux-arm64.tar.gz"
      sha256 "424bd2b7c345a7875b8b12f288a3146ee067218ff5ea1144482ff3a5d5413da5"
    end
    on_intel do
      url "https://github.com/sunfmin/zhiyuanwiki-releases/releases/download/v0.1.1/zhiyuan-0.1.1-linux-x86_64.tar.gz"
      sha256 "f865f8323d63caf19f74ffc8d30acc54ef8ed4cd18d50c1f1ccb05b9db2bdb8f"
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
