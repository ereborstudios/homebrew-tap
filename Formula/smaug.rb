class Smaug < Formula
  desc "Manages your DragonRuby Game Toolkit projects"
  homepage "https://smaug.dev"
  url "https://github.com/ereborstudios/smaug/archive/v0.2.1.tar.gz"
  sha256 "f0f8321e6775f1b0b7568abb68c13918b44db199f4d5121fdbabfbb2a0eb0f87"
  license "AGPL-3.0-or-later"

  bottle do
    root_url "https://github.com/ereborstudios/homebrew-tap/releases/download/smaug-0.2.1"
    sha256 cellar: :any, catalina: "fd50f0c7fa324703ae1486250201d5d1cad87f99c2ac19daf3f17ea6f4f6ea45"
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
