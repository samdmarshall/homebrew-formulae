class InsertDylib < Formula
  desc "insert-dylib"
  homepage "https://github.com/Tyilo/insert_dylib"

  # head
  ##
  head "https://github.com/Tyilo/insert_dylib.git"

  def install
    system "clang", "-x", "c", "insert_dylib/main.c", "-o", "insert_dylib"
    bin.install "insert_dylib"
  end
  
end
