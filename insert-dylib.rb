class InsertDylib < Formula
  desc "insert dylibs into existing binaries"
  homepage "https://github.com/Tyilo/insert_dylib"

  # head
  ##
  head "https://github.com/Tyilo/insert_dylib.git"

  def install
    system "xcrun", "clang", "-x", "c", "-arch", "x86_64", "./insert_dylib/main.c", "-I/usr/include/", "-o", "insert-dylib"
    bin.install "insert-dylib"
  end
  
end
