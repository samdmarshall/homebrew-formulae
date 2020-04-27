class Browserpass < Formula
  version "3.0.6"
  desc "This is a host application for browserpass browser extension providing it access to your password store."
  homepage "https://github.com/browserpass/browserpass-native"
  url "https://github.com/browserpass/browserpass-native/releases/download/#{version}/browserpass-linux64-#{version}.tar.gz"
  sha256 "f63047cbde5611c629b9b8e2acf6e8732dd4d9d64eba102c2cf2a3bb612b3360"

  resource "testfile" do
    url "https://github.com/browserpass/browserpass-native/files/3062744/request.hex.txt"
    sha256 "83ea960015e5bd05e604c13233d8ed16a87c38f83212822e8d69c622dea21af0"
  end

  depends_on "coreutils" => :build
  depends_on "gnu-sed" => :build
  depends_on "gpg"
  depends_on "pinentry"

  def install
    ENV["DESTDIR"] = ""
    ENV["PREFIX"] = prefix.to_s
    ENV["BIN"] = "browserpass-linux64"

    system "make", "configure"
    system "make", "install"

    # NOT possible to symlink the hosts files from a homebrew formula, since they go under HOME
    # Unfortunately, need to have the user do them manually
    # (same with policies, if the user wants them)
  end

  def caveats
    <<~EOF
  ********************************************************************************
  * To configure your browser, RUN THE FOLLOWING:

  $ PREFIX='/usr/local/opt/browserpass' make hosts-BROWSER-user -f /usr/local/opt/browserpass/lib/browserpass/Makefile

  * Where BROWSER is one of the following: [chromium chrome vivaldi brave firefox]
  ********************************************************************************
    EOF
  end

  test do
    resource("testfile").stage(testpath)
    # fails with 14: $HOME/.password-store doesn't exist, since homebrew uses its own $HOME
    # a return value other than 14 is incorrect here
    shell_output("#{prefix}/bin/browserpass-linux64 < #{testpath}/request.hex.txt 2>/dev/null", 14)
  end
end

