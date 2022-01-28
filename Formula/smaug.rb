class Smaug < Formula
  desc "Manages your DragonRuby Game Toolkit projects"
  homepage "https://github.com/ereborstudios/smaug"
  url "https://github.com/ereborstudios/smaug/archive/v0.5.1.tar.gz"
  sha256 "b842da75b1d55d786a0b10c4e4c37ec2650012e6e5cf6aa1d90d913d541e0899"
  license "AGPL-3.0-or-later"

  bottle do
    root_url "https://github.com/ereborstudios/homebrew-tap/releases/download/smaug-0.5.1"
    sha256 cellar: :any, big_sur: "70e8bbb64f0c87be6ceb9875aa96e8016dc76cc624a883f720f0cee8ec6a33de"
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
