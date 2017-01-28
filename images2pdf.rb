class Images2pdf < Formula
  desc "image->paged pdf converter"
  homepage "https://github.com/samdmarshall/images2pdf"

  # v1.0
  ##
  url "https://github.com/samdmarshall/images2pdf/archive/v1.0.tar.gz"
  sha256 "e9ab973fdc8ebcd047c642909c01177b8795de6ef99f8bd05b2491cca6972527"

  # head
  ##
  head "https://github.com/samdmarshall/images2pdf.git"
  
  def install
    system "make"
    bin.install "images2pdf"
  end
end
