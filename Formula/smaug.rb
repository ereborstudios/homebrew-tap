class Smaug < Formula
  desc "Manages your DragonRuby Game Toolkit projects"
  homepage "https://smaug.dev"
  url "https://github.com/ereborstudios/smaug/archive/v0.2.0.tar.gz"
  sha256 "41666db78bd22ec2eea245690eb6e7ce7f66c9bf67a8138b3e3b99e757d53656"
  license "AGPL-3.0-or-later"

  bottle do
    root_url "https://github.com/ereborstudios/homebrew-tap/releases/download/smaug-0.2.0"
    sha256 cellar: :any, catalina: "090b4b0a5843443be9f574a069da16cffd1fc67678de8710cdfefb97689038d8"
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
