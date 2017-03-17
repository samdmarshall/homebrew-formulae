class PassOtp < Formula
  desc "pass-otp"
  homepage "https://github.com/tadfisher/pass-otp"

  # head
  ##
  head "https://github.com/tadfisher/pass-otp.git"

  def install
    bin.install "otp.bash"
    install_path = "#{HOMEBREW_PREFIX}/lib/password-store/extensions"
    mkdir_p install_path
    ln_s "#{bin}/otp.bash", install_path
    man1.install "pass-otp.1"
  end

  def post_install
    
  end
end
