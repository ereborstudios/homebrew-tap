class Smaug < Formula
  desc "Manages your DragonRuby Game Toolkit projects"
  homepage "https://smaug.dev"
  url "https://github.com/ereborstudios/smaug/archive/v0.1.0.tar.gz"
  sha256 "0fec3fd1718e683440b6021da8cecdfef8d4880d6a3ff2af6fb5131a4c991381"
  license "AGPL-3.0-or-later"

  bottle do
    root_url "https://github.com/ereborstudios/homebrew-tap/releases/download/smaug-0.1.0"
    sha256 cellar: :any, catalina: "4b03ec330c2a53cfa4a94490f0e38fc4aaefc826e43b1200dd193845ee18196b"
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
