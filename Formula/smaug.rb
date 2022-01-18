class Smaug < Formula
  desc "Manages your DragonRuby Game Toolkit projects"
  homepage "https://github.com/ereborstudios/smaug"
  url "https://github.com/ereborstudios/smaug/archive/v0.4.0.tar.gz"
  sha256 "79d86aa9b97188225682daefe78276fa14d4a6505e1b2e32a32e278269baabc4"
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
