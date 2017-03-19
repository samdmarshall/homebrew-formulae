class Pewpewthespells < Formula
  desc "tools for building and running pewpewthespells.com"
  homepage "https://github.com/samdmarshall/pewpewthespells-com"

  url "https://github.com/samdmarshall/pewpewthespells-com/archive/v0.1.tar.gz"
  sha256 "7218c419b42b7c3d1c7ba00c4feb3b0e1d16bb3e2ee1e865e7cdca9459a00173"

  # --HEAD
  ##
  head "https://github.com/samdmarshall/pewpewthespells-com.git"

  # dependencies
  ##
  depends_on "nim"

  def install
    system "nimble", "build", "--accept"
    bin.install "rite"
    bin.install "ritual"
  end

  test do
    echo "yr good!"
  end
end
