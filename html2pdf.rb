class Html2pdf < Formula
  desc "html->pdf converter"
  homepage "https://github.com/samdmarshall/html2pdf"
  head "https://github.com/samdmarshall/html2pdf.git"
  url "https://github.com/samdmarshall/html2pdf/releases/download/1.0/html2pdf.zip"
  sha256 "ff5f5515d896f3a60a18529d43a9010c89eb2a17"
  
  def install
    bin.install Dir[libexec/"bin/*"]
  end
end