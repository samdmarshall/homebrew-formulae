class Gensite < Formula
  desc "my static website builder"
  homepage "https://github.com/samdmarshall/gensite"

  # v0.1
  ##
  url "https://github.com/samdmarshall/gensite/archive/v0.1.tar.gz"
  sha256 "8b368a9694a107c20e2c67997abd975a5199d1af5854326f00905721ca8c43f5"

  # --HEAD
  ##
  head "https://github.com/samdmarshall/gensite.git"

  bottle do
    root_url "https://pewpewthespells.com/bottles"
    sha256 "4c46e8cde604adfb0cbc578a91c7107074e13bc27689d87f84c91e710a2dfb5f" => :sierra
  end

  # dependencies
  ##
  depends_on "nim"

  def install
    system "nimble install yaml"
    system "nim compile gensite.nim"
    bin.install "gensite"
  end

  test do
    echo "yr good!"
  end
end
