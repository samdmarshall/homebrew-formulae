class SecureEnv < Formula
  desc "securely populate environment variables"
  homepage "https://github.com/samdmarshall/secure-env"

  # v0.1
  ##
  url "https://github.com/samdmarshall/secure-env/archive/v0.1.zip"
  version "0.1"
  sha256 "552429de38eaf1326ee6b869ed56605e3b51c6b706fcac85d56138d3368c4af9"

  # --HEAD
  ##
  head "https://github.com/samdmarshall/secure-env.git"

  # dependencies
  ##
  depends_on "nim"

  def install
    system "nim compile --out:secure-env --app:console --passL:\"-framework Foundation -framework Security\" secureEnv.nim"
    bin.install "secure-env"
  end
end
