class Nslocalizer < Formula
  desc "NSLocalizer"
  homepage "https://github.com/samdmarshall/nslocalizer"
  head "https://github.com/samdmarshall/nslocalizer.git", :branch => "develop"

  # versions
  version "1.0.1"
  url "https://github.com/samdmarshall/nslocalizer/archive/v1.0.1.zip"
  sha256 "06b79d3e54b380bd2e313a64572e5ff838f86511860d2a295dc971399a19696f"

  # dependencies of the tool
  depends_on 'python3'

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
