class Smaug < Formula
  desc "Manages your DragonRuby Game Toolkit projects"
  homepage "https://github.com/ereborstudios/smaug"
  url "https://github.com/ereborstudios/smaug/archive/v0.5.0.tar.gz"
  sha256 "1f7403246a4d490e525edb278aa7928a337f88d2ef496374c9e0d9c57129ad14"
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
