class PassUpdate < Formula
  desc "pass-update"
  homepage "https://gitlab.com/roddhjav/pass-update"

  # head
  ##
  head "https://github.com/roddhjav/pass-update.git"

  def install
    bin.install "update.bash"
    install_path = "#{HOMEBREW_PREFIX}/lib/password-store/extensions"
    mkdir_p install_path
    ln_s "#{bin}/update.bash", install_path
    man1.install "pass-update.1"
  end

  def post_install
    
  end
end
