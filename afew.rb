class Afew < Formula
  desc "initial tagging script for notmuch mail"
  homepage "https://github.com/afewmail/afew"

  url "https://github.com/afewmail/afew/archive/1.0.0.tar.gz"
  sha256 "827b1edfaeb39bcaaca9aca839b5a3d1b2fab350c7d1f8b1b097b35f2d816746"

  head "https://github.com/afewmail/afew.git"

   # dependencies of the tool
  depends_on 'python3'
  depends_on "notmuch" => "with-python3"

  def install
    pyver = Language::Python.major_minor_version "python3"

    ENV.prepend_create_path "PYTHONPATH", libexec/"vendor/lib/python#{pyver}/site-packages"
    system "pip3", "install", "chardet"

    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python#{pyver}/site-packages"

    system "python3", *Language::Python.setup_install_args(libexec)
  
    bin.install Dir["#{libexec}/bin/*"]
    bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])
  end
end
