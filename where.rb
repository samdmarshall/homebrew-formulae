class Where < Formula
  desc "where am i?"
  homepage "https://github.com/samdmarshall/where"
  head "https://github.com/samdmarshall/where.git"
  url "https://github.com/samdmarshall/where/archive/v0.1.tar.gz"
  sha256 "078ee3f6fbe04b1c0504200c075d8dc52a3db80d09800bfd867f559299d1c774"
  
  depends_on "nim"
  
  def install
    system "nim", "compile", "where.nim"
    
    bin.install "where"
  end
end
