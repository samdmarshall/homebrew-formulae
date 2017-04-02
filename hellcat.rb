class Hellcat < Formula
  desc "netcat that takes unfair advantage of traffic shaping systems that don't initially ratelimit"
  homepage "https://github.com/matildah/hellcat"

  # --HEAD
  ##
  head "https://github.com/matildah/hellcat.git"

  # dependencies
  ##

  def install
    system "make"
    bin.install "hellsend", "hellrecv"
  end

  test do
    echo "yr good!"
  end
end
