class Pewpewthespells < Formula
  desc "tools for building and running pewpewthespells.com"
  homepage "https://github.com/samdmarshall/pewpewthespells-com"

  # --HEAD
  ##
  head "https://github.com/samdmarshall/pewpewthespells-com.git"

  # dependencies
  ##
  depends_on "nim"

  def install
    system "nimble", "build"
    bin.install "rite"
    bin.install "ritual"
  end

  test do
    echo "yr good!"
  end
end
