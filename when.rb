class When < Formula
  desc "when is it?"
  homepage "https://github.com/samdmarshall/when"
  head "https://github.com/samdmarshall/when.git"

  url "https://github.com/samdmarshall/when/archive/v0.2.tar.gz"
  sha256 "1cdb4ee3fd8d02ed446c5dea5de448a8e36e939566752ca543d9b8e0e07d00e5"
  #url "https://github.com/samdmarshall/when/archive/v0.1.tar.gz"
  #sha256 "fd1ee1c034bd2bbdeeef1264522e6d2aefd0f4d079e294f9cf21458cf39a91e6"
  
  depends_on "nim"
  
  def install
    system "nim", "compile", "when.nim"
    
    bin.install "when"
  end
end
