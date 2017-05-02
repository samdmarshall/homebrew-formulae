class Coven < Formula
  desc "tool to run multiple commands in parallel"
  homepage "https://github.com/samdmarshall/coven"

  # --HEAD
  ##
  head "https://github.com/samdmarshall/coven.git"

  # dependencies
  ##
  depends_on "nim"

  def install
    system "nimble", "build"
    bin.install "coven"
  end

  test do
    echo "yr good!"
  end
end
