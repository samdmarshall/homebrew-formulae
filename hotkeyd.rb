class Hotkeyd < Formula
  desc "Minimal Hotkey utility"
  homepage "https://github.com/samdmarshall/hotkeyd"
  head "https://github.com/samdmarshall/hotkeyd.git"
  
  url "https://github.com/samdmarshall/hotkeyd/releases/download/v0.1/hotkeyd.zip"
  sha256 "f245321ba35203d907f87fbb51ce02d2813a4e7c1378060fefd88da5533d6252"
  version "0.1"
  
  def install
    bin.install "hotkeyd"
  end
  
  def post_install
    puts "Looking up path of 'hotkeyd'...\n"
    launch_agent_plist_path = `eval echo "~$USER/Library/LaunchAgents/com.pewpewthespells.hotkeyd.plist"`.delete!("\n")
    plist = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"\
    "<!DOCTYPE plist PUBLIC \"-//Apple Computer//DTD PLIST 1.0//EN\" \"http://www.apple.com/DTDs/PropertyList-1.0.dtd\">\n"\
    "<!--\n"\
    "\tcom.pewpewthespells.hotkeyd.plist\n"\
    "\thotkeyd\n"\
    "\n"\
    "\tCreated by Samantha Marshall on 11/14/15.\n"\
    "\tCopyright (c) 2015 Samantha Marshall. All rights reserved.\n"\
    "-->\n"\
    "<plist version=\"1.0\">\n"\
    "	<dict>\n"\
    "		<key>Label</key>\n"\
    "		<string>com.pewpewthespells.hotkeyd</string>\n"\
    "		<key>ProgramArguments</key>\n"\
    "		<array>\n"\
    "			<string>"+`which hotkeyd`.delete!("\n")+"</string>\n"\
    "		</array>\n"\
    "		<key>KeepAlive</key>\n"\
    "		<true/>\n"\
    "	</dict>\n"\
    "</plist>"
    puts "Writing LaunchAgent...\n"
    File.write(launch_agent_plist_path, plist)
    puts "Loading LaunchAgent...\n"
    system "launchctl", "load", "-w", "~/Library/LaunchAgents/com.pewpewthespells.hotkeyd.plist"
    puts "Completed!\n"
  end
end