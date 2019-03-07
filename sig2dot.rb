class Sig2dot < Formula
  desc "sig2dot.pl can be used to generate a graph of all of the signature relationships in a GPG/PGP keyring"
  homepage "http://www.chaosreigns.com/code/sig2dot/"

  version "0.35"
  url "http://www.chaosreigns.com/code/sig2dot/sig2dot.pl", :using => :curl
  sha256 "86515b1ec5300c049ff681bdfdedcfcd35d597790fad8e9a1d1db92497f59b33"
  
  depends_on "perl"

  def install
    mv "sig2dot.pl", "sig2dot"
    bin.install "sig2dot"
  end

  def caveats
    puts "Usage examples:"
    puts "$ gpg --list-sigs --keyring ./phillylinux.gpg | sig2dot > phillylinux.dot"
    puts "$ neato -Tps phillylinux.dot > phillylinux.neato.ps"
    puts "$ dot -Tps phillylinux.dot > phillylinux.dot.ps"
    puts "$ convert phillylinux.neato.ps phillylinux.neato.jpg"
    puts "$ convert -geometry 320x240 phillylinux.neato.ps phillylinux.neato.320.jpg"
  end
end
