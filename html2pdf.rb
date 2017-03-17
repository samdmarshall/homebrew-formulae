class Html2pdf < Formula
  desc "html->pdf converter"
  homepage "https://github.com/samdmarshall/html2pdf"
  head "https://github.com/samdmarshall/html2pdf.git"
  
  url "https://github.com/samdmarshall/html2pdf/archive/v1.1.tar.gz"
  sha256 "15ec23a0effe1ed3bd5bb45066bbb2e343094fb67563909531de173a962d4683"
  
  def install
    system "make"
    bin.install "html2pdf"
  end
end
