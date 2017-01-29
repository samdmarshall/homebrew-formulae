class SecureEnv < Formula
  desc "securely populate environment variables"
  homepage "https://github.com/samdmarshall/secure-env"

  # v0.1
  ##
  url "https://github.com/samdmarshall/secure-env/archive/v0.2.tar.gz"
  sha256 "885b27cc6cca04b60354983b58ee4cea07e4b4c6e2d66ef86718603c9a61b5f0"

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
