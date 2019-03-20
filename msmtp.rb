class Msmtp < Formula
  desc "SMTP client that can be used as an SMTP plugin for Mutt"
  homepage "https://marlam.de/msmtp/"
  url "https://marlam.de/msmtp/releases/msmtp-1.6.6.tar.xz"
  sha256 "da15db1f62bd0201fce5310adb89c86188be91cd745b7cb3b62b81a501e7fb5e"

  depends_on "pkg-config" => :build
  depends_on "libsecret" => :build
  depends_on "glib" => :build
  depends_on "openssl"

  def install
    args = %W[
      --disable-dependency-tracking
      --prefix=#{prefix}
      --with-tls=openssl
    ]

    system "./configure", *args
    system "make", "install"
    (pkgshare/"scripts").install "scripts/msmtpq"
  end

  test do
    system bin/"msmtp", "--help"
  end
end
