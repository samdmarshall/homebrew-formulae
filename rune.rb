class Rune < Formula
  desc "securely populate environment variables"
  homepage "https://github.com/samdmarshall/rune"

  url "https://github.com/samdmarshall/rune/archive/v0.5.1.tar.gz"
  sha256 "e52e01e595a7c19cb4388671c55d8c12bd1830384cd2d4875d86511ab32b4abd"

  # --HEAD
  ##
  head "https://github.com/samdmarshall/rune.git"

  # dependencies
  ##
  depends_on "nim"

  def install
    system "nimble", "--accept", "install", "yaml"
    system "nimble", "build_cli"
    bin.install "rune"
  end

  test do
    echo "yr good!"
  end
end
