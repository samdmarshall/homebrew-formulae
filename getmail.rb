class Getmail < Formula
  desc "Extensible mail retrieval system with POP3, IMAP4, SSL support"
  homepage "http://pyropus.ca/software/getmail/"

  url "http://pyropus.ca/software/getmail/old-versions/getmail-5.14.tar.gz"
  sha256 "f3a99fe74564237d12ca8d4582e113c067c9205b5ab640f72b4e8447606a99c1"

  depends_on "python"

  def install
    libexec.install %w[getmail getmail_fetch getmail_maildir getmail_mbox]
    inreplace Dir[libexec/"*"], %r{^#!/usr/bin/env python$}, "#!/usr/bin/python"
    bin.install_symlink Dir["#{libexec}/*"]
    libexec.install "getmailcore"
    man1.install Dir["docs/*.1"]
  end

  test do
    system bin/"getmail", "--help"
  end
end
