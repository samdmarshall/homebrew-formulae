class Html2pdf < Formula
  desc "html->pdf converter"
  homepage "https://github.com/samdmarshall/html2pdf"
  head "https://github.com/samdmarshall/html2pdf.git"
  
  url "https://github.com/samdmarshall/html2pdf/archive/v1.0.1.tar.gz"
  sha256 "e40c9dfe9710f5b5a9590dba1c04ca1c44036d1c04ebee2f31d339b0c24b8f66"
  
  def install
    system "make"
    bin.install "html2pdf"
  end
end
