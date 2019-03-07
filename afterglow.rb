class Afterglow < Formula
  desc "a script that generates link graphs based on network data"
  homepage "http://afterglow.sourceforge.net/"

  version "1.6.5"
  url "https://github.com/zrlram/afterglow.git", :using => :git
  
  depends_on "perl"

  def install
    mv "afterglow.pl", "afterglow"
    bin.install "afterglow"
  end

end
