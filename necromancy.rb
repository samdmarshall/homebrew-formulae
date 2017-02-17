class Necromancy < Formula
  desc "a quick and simple file system navigator"
  homepage "https://github.com/samdmarshall/necromancy"

  # --HEAD
  ##
  head "https://github.com/samdmarshall/necromancy.git"

  # dependencies
  ##
  depends_on "nim"
  depends_on "termbox"

  def install
    system "nimble", "build"
    bin.install "necromancy"
  end

  test do
    echo "yr good!"
  end
end
