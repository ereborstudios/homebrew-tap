class Smaug < Formula
  desc "Manages your DragonRuby Game Toolkit projects"
  homepage "https://smaug.dev"
  url "https://github.com/ereborstudios/smaug/archive/v0.3.0.tar.gz"
  sha256 "512ab754d21d0a38ebbfc0efc325f98ef1c7f2b026fbe04d834b5e796205d318"
  license "AGPL-3.0-or-later"

  bottle do
    root_url "https://github.com/ereborstudios/homebrew-tap/releases/download/smaug-0.3.0"
    sha256 cellar: :any, catalina: "bc37eb2468cefc62f735e46b55f973e4410bd770230db7e8e1660aacb05cba20"
  end

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
