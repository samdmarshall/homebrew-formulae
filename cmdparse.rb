class Cmdparse < Formula
  desc "posting data from the command-line into influxdb"
  homepage "https://github.com/samdmarshall/cmd-parse"

  # --HEAD
  ##
  head "https://github.com/samdmarshall/cmd-parse.git"

  # dependencies
  ##
  depends_on "nim"

  def install
    system "nimble", "install", "https://github.com/samdmarshall/influx.nim", "--accept"
    system "nim", "compile", "cmdparse.nim"
    bin.install "cmdparse"
  end

  test do
    echo "yr good!"
  end
end
