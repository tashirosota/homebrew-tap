class MagicalMake < Formula
  desc "Command-line tool to decorate your make commands with Magic Circle"
  homepage "https://github.com/tashirosota/magical_make"
  url "https://github.com/tashirosota/magical_make/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "e1ad8a7e347efc0d05ae06e996b4204b8892062172a69bab049d78a9595e0635"
  license "Apache-2.0"

  depends_on "elixir" => :build
  depends_on "erlang"

  def install
    system "mix", "local.hex", "--force"
    system "mix", "deps.get"
    system "mix", "escript.build"
    bin.install "mgc"
  end

  test do
    system "mgc", "--help"
  end
end
