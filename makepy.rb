class Makepy < Formula
  desc "rewrite of `make` in Python"
  homepage "https://bitbucket.org/runhello/makepy"
  
  head "https://bitbucket.org/runhello/makepy", :using => :hg

  depends_on :python if MacOS.version <= :snow_leopard
  
  def install
    bin.install "make.py"
  end
end
