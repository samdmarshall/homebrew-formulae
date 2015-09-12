class Mai < Formula
  desc "External Xcode scheme build tool"
  homepage "https://github.com/samdmarshall/Mai"
  head "https://github.com/samdmarshall/Mai.git"

  depends_on :python if MacOS.version <= :snow_leopard
  
  def install
    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python2.7/site-packages"
    system "python", *Language::Python.setup_install_args(libexec)

    bin.install Dir[libexec/"bin/*"]
    bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])
  end
end