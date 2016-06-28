class Pyconfig < Formula
	desc "Tool to generate xcconfig files from a simple DSL"
	homepage "https://github.com/samdmarshall/pyconfig"
	head "https://github.com/samdmarshall/pyconfig.git"
	
#	version "1.0"
#	url "https://github.com/samdmarshall/pyconfig/archive/v1.0.tar.gz"
#	sha256 "630c8e99173fa39128c61c689f40b82e497457435b04b6713eaaabbb2c264f9c"
	
#	version "1.0.1"
#	url "https://github.com/samdmarshall/pyconfig/archive/v1.0.1.tar.gz"
#	sha256 "eb75b801dc091986cf784fb5ceaa6b09539ad6103cb246f55ef72bae81ab2ca0"

	version "1.0.2"
	url "https://github.com/samdmarshall/pyconfig/archive/v1.0.2.tar.gz"
	sha256 "e88be363dcb4ce39459fdd331be89da8a0fbbab7833302af5db99886043f5f8b"
	
	depends_on :python if MacOS.version <= :snow_leopard
	
	def install
		ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python2.7/site-packages"
		system "python", *Language::Python.setup_install_args(libexec)

		bin.install Dir[libexec/"bin/*"]
		bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])
	end
end