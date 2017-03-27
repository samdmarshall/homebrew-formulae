class Grimoire < Formula
  desc "securely use environment variables"
  homepage "https://github.com/samdmarshall/grimoire"

  url "https://github.com/samdmarshall/grimoire/archive/v0.1.3.tar.gz"
  sha256 "c355b5138610c4889c2a5affcc00c45fd819aeacd127f3212e14d5167641e3e2"
  #url "https://github.com/samdmarshall/grimoire/archive/v0.1.2.tar.gz"
  #sha256 "680953af7ea272e99d2884e53bf534123a44f5b974fc6651502c64b265740b35"
  #url "https://github.com/samdmarshall/grimoire/archive/v0.1.1.tar.gz"
  #sha256 "f9a12fa9abcb040d97978dabb4b62cca73a609edafa884661f1b8f604f93bd30"
  #url "https://github.com/samdmarshall/grimoire/archive/v0.1.tar.gz"
  #sha256 "1af1986a9b194e4d3f27d7e3e0959e1876238db9513fdecfd83f3e05cf6df3a6"

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
