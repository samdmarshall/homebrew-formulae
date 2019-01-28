class BatteryLevel < Formula
  desc "easy access to current macbook battery levels on the command line"
  homepage "https://github.com/samdmarshall/battery-level"

  url "https://github.com/samdmarshall/battery-level/archive/v0.4.1.tar.gz"
  sha256 "fbf04092ab982ad86aefcb471dedb25e77361e39ab918c0baf2d0201fdda2420"
  # url "https://github.com/samdmarshall/battery-level/archive/v0.4.tar.gz"
  # sha256 "d7620af5a9a6f136ce949aaf92f21a06e9b4729045c21cd64564c0462c740f5c"
  # url "https://github.com/samdmarshall/battery-level/archive/v0.3.tar.gz"
  # sha256 "3fe3aec759172ea208681f6cab1d5c05d51954e35c29277cc67c03c61b30f7d8"
  ##
  #url "https://github.com/samdmarshall/battery-level/archive/v0.2.tar.gz"
  #sha256 "d05337129dfb1cc19d773e19b3017855575b2d6e4c7aae00fa57a8597ed217c8"
  ##
  #url "https://github.com/samdmarshall/battery-level/archive/v0.1.tar.gz"
  #sha256 "feb6475369671670dd4a1c833d6cbe7b4c6b95662851420588b7ffc4f7a0ab90"

  # --HEAD
  ##
  head "https://github.com/samdmarshall/battery-level.git"

  # dependencies
  ##
  depends_on "nim"

  def install
    system "nimble" "build"
    bin.install "battery-level"
  end

  test do
    echo "yr good!"
  end
end
