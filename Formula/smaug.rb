class Smaug < Formula
  desc "Manages your DragonRuby Game Toolkit projects"
  homepage "https://smaug.dev"
  url "https://github.com/ereborstudios/smaug/archive/v0.2.3.tar.gz"
  sha256 "b25d24147cb721a9f93da9ba4adfa30db46a90970e28fa491044a1b46321001b"
  license "AGPL-3.0-or-later"

  bottle do
    root_url "https://github.com/ereborstudios/homebrew-tap/releases/download/smaug-0.2.3"
    sha256 cellar: :any, catalina: "bbb9795ad8caf849f50491abb20d8770c2c90c555727b3321b37eb880574e275"
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
