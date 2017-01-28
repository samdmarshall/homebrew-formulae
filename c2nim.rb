class C2nim < Formula
  desc "c2nim"
  homepage "https://github.com/nim-lang/c2nim"

  # --HEAD
  ##
  head "https://github.com/nim-lang/c2nim.git"

  # dependencies
  ##
  depends_on "nim"

  def install
    system "nimble", "build"
    bin.install "c2nim"
  end

  test do
    echo "yr good!"
  end
end
