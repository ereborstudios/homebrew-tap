class Smaug < Formula
  desc "Manages your DragonRuby Game Toolkit projects"
  homepage "https://github.com/ereborstudios/smaug"
  url "https://github.com/ereborstudios/smaug/archive/v0.5.1.tar.gz"
  sha256 "b842da75b1d55d786a0b10c4e4c37ec2650012e6e5cf6aa1d90d913d541e0899"
  license "AGPL-3.0-or-later"

  depends_on "rust" => :build
  depends_on "openssl@1.1"

  def install
    cd "cli" do
      system "cargo", "install", *std_cargo_args
    end
  end

  test do
    assert shell_output(bin/"smaug", 2)
  end
end
