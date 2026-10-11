class Calcgrid < Formula
  desc "Spreadsheets for AI agents: read, edit and check .numb and .xlsx files"
  homepage "https://github.com/sunfmin/calcgrid-cli"
  url "https://github.com/sunfmin/calcgrid-cli/releases/download/v0.2.0/calcgrid-0.2.0-macos-arm64.zip"
  version "0.2.0"
  sha256 "1bfdc7020f9d9b7020e65e5dbdbcaa5e51e73b82ebf32d7b973dd15c150eae14"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  def install
    bin.install "calcgrid"
  end

  test do
    assert_equal "calcgrid #{version}", shell_output("#{bin}/calcgrid --version").strip
  end
end
