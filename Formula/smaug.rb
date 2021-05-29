class Smaug < Formula
  desc "Manages your DragonRuby Game Toolkit projects"
  homepage "https://smaug.dev"
  url "https://github.com/ereborstudios/smaug/archive/v0.3.1.tar.gz"
  sha256 "01b321c9060d6104219d0ce770a2785b3aedd09a8dfcd69780d78bf41e19afad"
  license "AGPL-3.0-or-later"

  bottle do
    root_url "https://github.com/ereborstudios/homebrew-tap/releases/download/smaug-0.3.1"
    sha256 cellar: :any, catalina: "7a8b8cdec13e862de3a309b86ad2a76d69a1b9dc3f81f4a29e5fcf98d8d8b5a4"
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
