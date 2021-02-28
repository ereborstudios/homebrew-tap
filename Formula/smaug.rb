# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Smaug < Formula
  desc "A tool to manage your DragonRuby Game Toolkit projects."
  homepage "https://smaug.dev"
  url "https://github.com/ereborstudios/smaug/archive/v0.1.0.tar.gz"
  sha256 "0fec3fd1718e683440b6021da8cecdfef8d4880d6a3ff2af6fb5131a4c991381"
  license "AGPL-3.0-or-later"

  depends_on "rust" => :build

  def install
    cd "cli" do
      system "cargo", "install", *std_cargo_args
    end
  end

  test do
    assert_match "dragonruby", shell_output(bin/"smaug", 255)
  end
end
