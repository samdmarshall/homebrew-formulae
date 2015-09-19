class Aosd < Formula
  desc "Apple Open Source Downloader"
  homepage "https://github.com/samdmarshall/AOS-Downloader"
  head "https://github.com/samdmarshall/AOS-Downloader.git"
  url "https://github.com/samdmarshall/AOS-Downloader/archive/v1.0.tar.gz"
  sha256 "207388387fd40bbbfd32f4950e57a5c38d62ee369b9bab249ff7345bf119b5ea"
  
  
  depends_on :python if MacOS.version <= :snow_leopard
  
  def install
    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python2.7/site-packages"
    system "python", *Language::Python.setup_install_args(libexec)
    
    bin.install Dir[libexec/"bin/*"]
    bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])
  end
end