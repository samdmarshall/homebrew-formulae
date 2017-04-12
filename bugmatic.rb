class Bugmatic < Formula
  desc "Offline-searchable bug tracker with support for locally enqueueing bugs and then synching back to Github issues."
  homepage "https://github.com/uliwitness/bugmatic"
  head "https://github.com/uliwitness/bugmatic.git"
  
  def install
      system "make", "all"
      bin.install "products/bugmatic"
    end
end
