class PassOtp < Formula
  desc "pass-otp"
  homepage "https://github.com/tadfisher/pass-otp"

  url "https://github.com/tadfisher/pass-otp/releases/download/v1.2.0/pass-otp-1.2.0.tar.gz"
  sha256 "5720a649267a240a4f7ba5a6445193481070049c1d08ba38b00d20fc551c3a67"

  head "https://github.com/tadfisher/pass-otp.git"

  depends_on "shellcheck" => :test
  depends_on "oath-toolkit"
  depends_on "pass"

  def install
    system "make", "PREFIX=#{prefix}", "BASHCOMPDIR=#{bash_completion}", "install"
  end
end
