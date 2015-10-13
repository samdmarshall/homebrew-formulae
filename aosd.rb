class Aosd < Formula
  desc "Apple Open Source Downloader"
  homepage "https://github.com/samdmarshall/AOS-Downloader"
  head "https://github.com/samdmarshall/AOS-Downloader.git"
  url "https://github.com/samdmarshall/AOS-Downloader/archive/v1.1.1.tar.gz"
  sha256 "0d15700ff43fea905d4a7837e12e70a66fed8975f3e5893c06fac3a8d0355e9b"
  
  
  depends_on :python if MacOS.version <= :snow_leopard
  
  def install
    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python2.7/site-packages"
    system "python", *Language::Python.setup_install_args(libexec)
    
    bin.install Dir[libexec/"bin/*"]
    bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])
  end
end