class Aosd < Formula
  desc "Apple Open Source Downloader"
  homepage "https://github.com/samdmarshall/AOS-Downloader"
  head "https://github.com/samdmarshall/AOS-Downloader.git"
  url "https://github.com/samdmarshall/AOS-Downloader/archive/v1.1.tar.gz"
  sha256 "1d32a02a454db22fc3b00c0d57fcb4f1c2f954fb6bf1b049714cbe24314d844e"
  
  
  depends_on :python if MacOS.version <= :snow_leopard
  
  def install
    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python2.7/site-packages"
    system "python", *Language::Python.setup_install_args(libexec)
    
    bin.install Dir[libexec/"bin/*"]
    bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])
  end
end