class CsTools < Formula
  desc "some general codesigning related tools"
  homepage "https://github.com/samdmarshall/cs-tools"

  # head
  ##
  head "https://github.com/samdmarshall/cs-tools.git", :branch => "develop" 

  def install
    system "make"
    bin.install "build/find-identity"
    bin.install "build/guardian"
    bin.install "build/quarantine"
    bin.install "build/vaccine"
    bin.install "build/signature"
  end
end
