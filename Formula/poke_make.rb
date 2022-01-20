class PokeMake < Formula
  desc "Command line tool to decorate your make commands with Pokemon made by Elixir"
  homepage "https://github.com/tashirosota/poke_make"
  url "https://github.com/tashirosota/poke_make/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "12a89bae157c56e51ec9cd07dd96bc8a0931e93e42a31246d20ffa8e19a820c5"
  license "Apache-2.0"

  depends_on "elixir" => :build
  depends_on "erlang"

  def install
    system "mix", "local.hex", "--force"
    system "mix", "deps.get"
    system "mix", "escript.build"
    bin.install "poke"
  end

  test do
    system "poke", "--help"
  end
end
