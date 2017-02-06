class SecureEnv < Formula
  desc "securely populate environment variables"
  homepage "https://github.com/samdmarshall/secure-env"

  url "https://github.com/samdmarshall/secure-env/archive/v0.3.tar.gz"
  sha256 "f49d44f1db8f2362d1ed8ea96588b266346402c8748aed9674b92baf5d3b4015"

  # --HEAD
  ##
  head "https://github.com/samdmarshall/secure-env.git"

  # dependencies
  ##
  depends_on "nim"

  def install
    system "nim", "compile", "secureEnv.nim"
    bin.install "secure-env"
  end

  test do
    echo "yr good!"
  end
end
