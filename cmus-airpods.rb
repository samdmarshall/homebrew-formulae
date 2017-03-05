class CmusAirpods < Formula
  desc "airpod support for cmus"
  homepage "https://github.com/samdmarshall/cmus-airpods"

  # --HEAD
  ##
  head "https://github.com/samdmarshall/cmus-airpods.git"

  # dependencies
  ##
  depends_on "nim"

  def install
    system "nim", "compile", "agent.nim"
    bin.install "cmus-airpods-agentd"
  end

  test do
    echo "yr good!"
  end
end
