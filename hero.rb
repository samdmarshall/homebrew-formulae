class Hero < Formula
  desc "dotfile symlink creator"
  homepage "https://github.com/samdmarshall/hero"

  # --HEAD
  ##
  head "https://github.com/samdmarshall/hero.git"

  # dependencies
  ##
  depends_on "nim"

  def install
    system "nimble", "build"
    bin.install "hero"
  end

  test do
    echo "yr good!"
  end
end
