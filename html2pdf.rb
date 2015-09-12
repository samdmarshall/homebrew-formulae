class Html2pdf < Formula
  desc "html->pdf converter"
  homepage "https://github.com/samdmarshall/html2pdf"
  head "https://github.com/samdmarshall/html2pdf.git"
  url "https://github.com/samdmarshall/html2pdf/releases/download/1.0/html2pdf.zip"
  sha256 "ff6f64d0767e34c4d4bf029532d80a6a27f718aea587604d558dcfe7bfe40f92"
  
  def install
    bin.install Dir[libexec/"bin/*"]
  end
end