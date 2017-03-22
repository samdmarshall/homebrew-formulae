class When < Formula
  desc "when is it?"
  homepage "https://github.com/samdmarshall/when"
  head "https://github.com/samdmarshall/when.git"
  url "https://github.com/samdmarshall/when/archive/v0.1.tar.gz"
  sha256 "fd1ee1c034bd2bbdeeef1264522e6d2aefd0f4d079e294f9cf21458cf39a91e6"
  
  depends_on "nim"
  
  def install
    system "nim", "compile", "when.nim"
    
    bin.install "when"
  end
end
