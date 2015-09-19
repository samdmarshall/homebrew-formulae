class Privatesdks < Formula
  desc "Supplimental SDKs for building Apple's open source packages"
  homepage "https://github.com/samdmarshall/OSXPrivateSDK"
  head "https://github.com/samdmarshall/OSXPrivateSDK.git"
  
  def install
    additional_sdk_dir = `eval echo "~$USER/Library/Developer/AdditionalSDKs/"`
    additional_sdk_dir.delete!("\n")
    unless File.exist?(additional_sdk_dir)
      puts "Creating directory to store additional SDKs..."
      Dir.mkdir(additional_sdk_dir)
    end
    for file in Dir["*.sparse.sdk"]
      file.delete!("\n")
      sdk_dir = additional_sdk_dir+"/"+file
      sdk_dir.delete!("\n")
      if File.exist?(sdk_dir)
        puts "Removing old version of '"+file+"'..."
        FileUtils.rm_r sdk_dir
      end
      puts "Installing '"+file+"'..."
      temp_path = "#{buildpath}"+"/"+file
      temp_path.delete!("\n")
      FileUtils.mv temp_path, additional_sdk_dir
      puts "* To use '"+file+"', set the ADDITIONAL_SDKS build setting to '${USER_LIBRARY_DIR}/Developer/AdditionalSDKs/"+file+"'\n"
    end
    puts "\nInstalled SDKs to '"+additional_sdk_dir+"'!"
  end
end