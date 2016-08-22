class Plistprocessor < Formula
	desc "Tool to process plists by subsituting environment variables"
	homepage "https://github.com/samdmarshall/plist-processor"
	head "git@github.com:samdmarshall/plist-processor.git", :branch => "develop"

	version "1.0"
	url "https://github.com/samdmarshall/plist-processor/archive/v1.0.tar.gz"
	sha256 "c1731272ba6b46fe7ce719653d7f088c3733aea0566ae69f7e2d415f6fedfd3f"

	depends_on :python if MacOS.version <= :snow_leopard
	
	def install
		ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python2.7/site-packages"
		system "python", *Language::Python.setup_install_args(libexec)
		
		bin.install Dir[libexec/"bin/*"]
		bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])
	end
end