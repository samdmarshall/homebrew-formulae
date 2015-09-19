class Privatesdks < Formula
  desc "Supplimental SDKs for building Apple's open source packages"
  homepage "https://github.com/samdmarshall/OSXPrivateSDK"
  head "https://github.com/samdmarshall/OSXPrivateSDK.git"
  
  def install
    system "mkdir -p ~/Library/Developer/AdditionalSDKS/"
    mv "*.sparse.sdk" "~/Library/Developer/AdditionalSDKS/"
  end
end