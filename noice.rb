class Noice < Formula
  desc "small file browser"
  homepage "http://git.2f30.org/noice/"

  head "git://git.2f30.org/noice.git"

  def install
    system "make"
    bin.install "noice"
  end
end
