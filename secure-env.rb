class SecureEnv < Formula
  desc "securely populate environment variables"
  homepage "https://github.com/samdmarshall/secure-env"

  url "https://github.com/samdmarshall/secure-env/archive/v0.4.tar.gz"
  sha256 "f472057ec4b44b0d2dd499e52dbddff695c675a52607d7721192ad6c65078ebd"

  # --HEAD
  ##
  head "https://github.com/samdmarshall/secure-env.git"

  # dependencies
  ##
  depends_on "nim"

  def install
    system "nimble", "--accept", "install", "yaml"
    system "nim", "compile", "secureEnv.nim"
    bin.install "secure-env"
  end

  test do
    echo "yr good!"
  end
end
