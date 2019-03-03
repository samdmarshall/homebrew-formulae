class XcbUtilXrm < Formula
  desc "utility functions for the X resource manager, development files"
  homepage "https://github.com/Airblader/xcb-util-xrm"
  head "https://github.com/Airblader/xcb-util-xrm.git"

  depends_on "pkg-config" => :build
  depends_on "autoconf" => :build
  depends_on "autogen" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "m4" => :build
  
  def install
    system "./autogen.sh"
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

end
