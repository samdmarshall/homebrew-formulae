class Space < Formula
  desc "space"
  homepage "https://github.com/samdmarshall/space"
  head "https://github.com/samdmarshall/space.git"

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
