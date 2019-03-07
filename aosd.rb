class Aosd < Formula
  desc "Apple Open Source Downloader"
  homepage "https://github.com/samdmarshall/AOS-Downloader"
  head "https://github.com/samdmarshall/AOS-Downloader.git"
  url "https://github.com/samdmarshall/AOS-Downloader/archive/v1.1.2.tar.gz"
  sha256 "26789c13c8cce25c9d5f8460f50e87112f9a6e9644ab26254f628437b6ad6d30"
  
  
  depends_on "python"
  
  def install
    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python2.7/site-packages"
    system "python", *Language::Python.setup_install_args(libexec)
    
    bin.install Dir[libexec/"bin/*"]
    bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])
  end
end