class SecureEnv < Formula
  desc "securely populate environment variables"
  homepage "https://github.com/samdmarshall/secure-env"

  # v0.1
  ##
  url "https://github.com/samdmarshall/secure-env/archive/v0.1.tar.gz"
  sha256 "3d1344b01b60e643ad9fabcbf47d223e8c6b65678495359fb1e512d51971f2f8"

  # --HEAD
  ##
  head "https://github.com/samdmarshall/secure-env.git"

  bottle do
    root_url "https://pewpewthespells.com/bottles"
    sha256 "5fb1fbaeccca56fbdcf0e93c9b3c13bda2f70d579292e91a02fe92b9401850d0" => :sierra
  end

  # dependencies
  ##
  depends_on "nim"

  def install
    system "nim compile --out:secure-env --app:console --passL:\"-framework Foundation -framework Security\" secureEnv.nim"
    bin.install "secure-env"
  end

  test do
    echo "yr good!"
  end
end
