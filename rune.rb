class Rune < Formula
  desc "securely populate environment variables"
  homepage "https://github.com/samdmarshall/rune"

  url "https://github.com/samdmarshall/rune/archive/v0.5.2.tar.gz"
  sha256 "e324943d1c160bd7cb4fe3ea30012af7e72b0b0e6d3a3345bd47c56b50666bb2"

  # --HEAD
  ##
  head "https://github.com/samdmarshall/rune.git"

  # dependencies
  ##
  depends_on "nim"

  def install
    system "nimble", "--accept", "install", "yaml"
    system "nimble", "install"
    system "nimble", "build_cli"
    bin.install "rune"
  end

  test do
    echo "yr good!"
  end
end
