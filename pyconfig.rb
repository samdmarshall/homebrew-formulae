class Pyconfig < Formula
	desc "Tool to generate xcconfig files from a simple DSL"
	homepage "https://github.com/samdmarshall/pyconfig"
	head "https://github.com/samdmarshall/pyconfig.git"
  url "https://github.com/samdmarshall/pyconfig/archive/v1.0.tar.gz"
  sha256 "630c8e99173fa39128c61c689f40b82e497457435b04b6713eaaabbb2c264f9c"

	depends_on :python if MacOS.version <= :snow_leopard
	
	def install
		ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python2.7/site-packages"
		system "python", *Language::Python.setup_install_args(libexec)

		bin.install Dir[libexec/"bin/*"]
		bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])
	end
end