class Dagger < Formula
  desc "Binary Translator to LLVM IR"
  homepage "https://github.com/repzret/dagger"

  head "https://github.com/repzret/dagger.git"

  depends_on "cmake" => :build

  def install
    mkdir "build" do
      args = std_cmake_args
      args << "-DCMAKE_OSX_SYSROOT=/" unless MacOS::Xcode.installed?
      args << "-DLLVM_ENABLE_LIBCXX=ON"
      args << ".."
      system "cmake", "-G", "Unix Makefiles", *args
      system "make"
      bin.install "bin/llvm-dec"
      lib.install "lib/libDYN.dylib"
    end
  end
end
