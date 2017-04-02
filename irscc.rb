class Irscc < Formula
  desc "compile C into tax documents"
  homepage "https://bitbucket.org/wgunther/irscc/overview"

  # --HEAD
  ##
  head "https://bitbucket.org/wgunther/irscc.git"

  # dependencies
  ##

  def install
    system "make"
    bin.install "irscc"
  end

  test do
    echo "yr good!"
  end
end
