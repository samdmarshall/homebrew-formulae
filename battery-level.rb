class BatteryLevel < Formula
  desc "securely populate environment variables"
  homepage "https://github.com/samdmarshall/battery-level"

  # v0.1
  ##
  url "https://github.com/samdmarshall/battery-level/archive/v0.1.tar.gz"
  sha256 "feb6475369671670dd4a1c833d6cbe7b4c6b95662851420588b7ffc4f7a0ab90"

  # --HEAD
  ##
  head "https://github.com/samdmarshall/battery-level.git"

  # dependencies
  ##
  depends_on "nim"

  def install
    system "nim", "compile", "BatteryLevel.nim"
    bin.install "battery-level"
  end

  test do
    echo "yr good!"
  end
end
