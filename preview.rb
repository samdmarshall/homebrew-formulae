class Preview < Formula
  desc "quick and dirty file&directory previewer"
  homepage "https://github.com/samdmarshall/preview"

  # v0.1
  ##
  url "https://github.com/samdmarshall/preview/archive/v.0.1.tar.gz"
  sha256 "0bdf916607eb9f2bdd59614eb5507d3ba5222bae86bee6b07760e9817b447525"

  # --HEAD
  ##
  head "https://github.com/samdmarshall/preview.git"

  # dependencies
  ##
  depends_on "libmagic"
  depends_on "nim"

  def install
    system "nim", "compile", "preview.nim"
    bin.install "preview"
  end
end

