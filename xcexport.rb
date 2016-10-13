class Xcexport < Formula
  desc "xcexport"
  homepage "https://github.com/samdmarshall/xcexport"
  head "https://github.com/samdmarshall/xcexport.git", :branch => "develop"

  # versions
  version "0.1"
  url "https://github.com/samdmarshall/xcexport/archive/v0.1.tar.gz"
  sha256 "8f035cc30d4a72754904992486ee0a5e1505fe935f94859046f91783f78861e7"

  # dependencies of the tool
  depends_on :python3

  def install
    pyver = Language::Python.major_minor_version "python3"

    ENV.prepend_create_path "PYTHONPATH", libexec/"vendor/lib/python#{pyver}/site-packages"
    system "pip3", "install", "-r", "install_requirements.txt"

    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python#{pyver}/site-packages"

    system "python3", *Language::Python.setup_install_args(libexec)

    bin.install Dir["#{libexec}/bin/*"]
    bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])

  end
end
