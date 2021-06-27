class Smaug < Formula
  desc "Manages your DragonRuby Game Toolkit projects"
  homepage "https://smaug.dev"
  url "https://github.com/ereborstudios/smaug/archive/v0.3.2.tar.gz"
  sha256 "930422e0e210e7ecafd87a8baf57a1482ef891783f6da0877035dd6d93ba0b9e"
  license "AGPL-3.0-or-later"

  bottle do
    root_url "https://github.com/ereborstudios/homebrew-tap/releases/download/smaug-0.3.2"
    sha256 cellar: :any, catalina: "652fc7efc299ded791e23b4905094a2c88563f9b40fe987a7d13c9ba836dd59b"
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
