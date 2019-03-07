class Pyconfig < Formula
	desc "Tool to generate xcconfig files from a simple DSL"
	homepage "https://github.com/samdmarshall/pyconfig"
	head "https://github.com/samdmarshall/pyconfig.git", :branch => "develop"
	
#	version "1.0"
#	url "https://github.com/samdmarshall/pyconfig/archive/v1.0.tar.gz"
#	sha256 "630c8e99173fa39128c61c689f40b82e497457435b04b6713eaaabbb2c264f9c"
	
#	version "1.0.1"
#	url "https://github.com/samdmarshall/pyconfig/archive/v1.0.1.tar.gz"
#	sha256 "eb75b801dc091986cf784fb5ceaa6b09539ad6103cb246f55ef72bae81ab2ca0"

#	version "1.0.2"
#	url "https://github.com/samdmarshall/pyconfig/archive/v1.0.2.tar.gz"
#	sha256 "6a3a0a918e440addb09aae24dd74b7cfaa1edf1f3e5d81acf209290eec26b1b0"

#	version "1.1"
#	url "https://github.com/samdmarshall/pyconfig/archive/v1.1.tar.gz"
#	sha256 "5013d65b0ae8e7401f5419b2b8d127540ec0da4e2435ea5f284170f55dca3204"

#	version "1.1.1"
#	url "https://github.com/samdmarshall/pyconfig/archive/v1.1.1.tar.gz"
#	sha256 "333996ade82b1ba02c7b62fbb6803fcde98ef3ceadf3cfce49fb3e808119e09d"

	# version "1.1.2"
	# url "https://github.com/samdmarshall/pyconfig/archive/v1.1.2.tar.gz"
	# sha256 "f629a3069d2f5ab6731eccbf9e490d80cf33a463041c0a2703be961b1d1be2e6"

# version "1.1.3"
#  url "https://github.com/samdmarshall/pyconfig/archive/v1.1.3.tar.gz"
#  sha256 "b7d5e7f0e6579d627dba330e5e8f24815be7a3e215c26220a343f9d7531ccf4b"

# version "1.1.3.1"
url "https://github.com/samdmarshall/pyconfig/archive/v1.1.3.1.tar.gz"
sha256 "a7b221474d8cf472ca22df78ddccb3f4004d0b8ee5a74cbd6606e2c6b343c0bd"

	depends_on "python"
  depends_on "pyparsing" => 'python'
	
	def install
		ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python2.7/site-packages"
    
		system "python", *Language::Python.setup_install_args(libexec)
		
		bin.install Dir[libexec/"bin/*"]
		bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])
	end
end
