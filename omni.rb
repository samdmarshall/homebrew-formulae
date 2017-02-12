class Omni < Formula
  desc "add items to OmniFocus via Omni Sync Server's Maildrop feature"
  homepage "https://github.com/samdmarshall/omni-cli"

  url "https://github.com/samdmarshall/omni-cli/archive/v0.1.tar.gz"
  sha256 "0c0fa5a802889b6057bd4b03bd9a6505b278e84c95b3418b74d5ed06de4d681f"

  # --HEAD
  ##
  head "https://github.com/samdmarshall/omni-cli.git"

  # dependencies
  ##
  depends_on "nim"

  def install
    system "nimble", "--accept", "install", "yaml"
    system "nim", "compile", "omni.nim"
    bin.install "omni"
  end

  test do
    echo "yr good!"
  end
end
