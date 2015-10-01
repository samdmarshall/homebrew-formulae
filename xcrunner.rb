class Xcrunner > Formula
  desc "dynamic sdk tool lookup"
  homepage "https://github.com/samdmarshall/xcrunner"
  head "https://github.com/samdmarshall/xcrunner.git"
  url "https://github.com/samdmarshall/xcrunner/releases/download/v1.0/xcrunner.zip"
  sha256 "b8e1f78b70f473a97047ac20459e9e6e44853f13b34a029b53ddfefff1c30669"
  
  def install
    bin.install "xcrunner"
  end
end