class Iosconsole < Formula
  desc "CLI tool to interact with iOS Devices"
  homepage "https://github.com/samdmarshall/SDMMobileDevice"
  head "https://github.com/samdmarshall/SDMMobileDevice.git"
  url "https://github.com/samdmarshall/SDMMobileDevice/releases/download/1.1/iOSConsole.zip"
  sha256 "ab18c419ee40999128220438130946943925703f498c72cbdbd3fd43f1adfd09"
  
  def install
    bin.install Dir[libexec/"bin/*"]
  end
end