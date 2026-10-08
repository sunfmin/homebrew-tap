class Calcgrid < Formula
  desc "Spreadsheets for AI agents: read, edit and check .numb and .xlsx files"
  homepage "https://github.com/sunfmin/calcgrid-cli"
  url "https://github.com/sunfmin/calcgrid-cli/releases/download/v0.1.0/calcgrid-0.1.0-macos-arm64.zip"
  version "0.1.0"
  sha256 "b71da5ae1c87717f82ca8615086daf21480fbea4fdb2727e7b00a0fa51960b8c"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "calcgrid"
  end

  test do
    assert_equal "calcgrid #{version}", shell_output("#{bin}/calcgrid --version").strip
  end
end
