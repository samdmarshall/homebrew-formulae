class Grimoire < Formula
  desc "securely use environment variables"
  homepage "https://github.com/samdmarshall/grimoire"

  url "https://github.com/samdmarshall/grimoire/archive/v0.1.tar.gz"
  sha256 "1af1986a9b194e4d3f27d7e3e0959e1876238db9513fdecfd83f3e05cf6df3a6"

  # --HEAD
  ##
  head "https://github.com/samdmarshall/grimoire.git"

  # dependencies
  ##
  depends_on "nim"

  def install
    system "nimble", "install", "https://github.com/samdmarshall/rune", "--accept"
    system "nimble", "build"
    bin.install "grimoire"
  end

  test do
    echo "yr good!"
  end
end
