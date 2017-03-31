class Grimoire < Formula
  desc "securely use environment variables"
  homepage "https://github.com/samdmarshall/grimoire"

  url "https://github.com/samdmarshall/grimoire/archive/v0.2.2.tar.gz"
  sha256 "06e645ab7d01035aa2b88a5d6fa02e3680b8b0969b74c109478539ef6d916602"
  #url "https://github.com/samdmarshall/grimoire/archive/v0.2.1.tar.gz"
  #sha256 "c15dcbccc5e6ba99435f588a097d3cdd2c244f21f89492ae4f3f6647fa955529"
  #url "https://github.com/samdmarshall/grimoire/archive/v0.2.tar.gz"
  #sha256 "10ab94a36fd6a7f017b6c5e8cce971fd9568df5270e9f36211d5e7349110ecfb"
  #url "https://github.com/samdmarshall/grimoire/archive/v0.1.4.tar.gz"
  #sha256 "e0f214fe838f85a5c872e99daaf49ffdcfa2b710602cda9dc0c9ae3f6fbbcddd"
  #url "https://github.com/samdmarshall/grimoire/archive/v0.1.3.tar.gz"
  #sha256 "c355b5138610c4889c2a5affcc00c45fd819aeacd127f3212e14d5167641e3e2"
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
