class Smaug < Formula
  desc "Manages your DragonRuby Game Toolkit projects"
  homepage "https://smaug.dev"
  url "https://github.com/ereborstudios/smaug/archive/v0.3.1.tar.gz"
  sha256 "fb23ed16b419c299e1b96215250b8d2df272fc4efbc56cea72c840b3668bf907"
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
