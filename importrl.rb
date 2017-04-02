class Importrl < Formula
  desc "get contents of safari reading list"
  homepage "https://github.com/samdmarshall/reading-list"

  # --HEAD
  ##
  head "https://github.com/samdmarshall/reading-list.git"

  # dependencies
  ##
  depends_on "nim"
  depends_on "libplist"

  def install
    system "nim", "compile", "importrl.nim"
    bin.install "importrl"
  end

  test do
    echo "yr good!"
  end
end
