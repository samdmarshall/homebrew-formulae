class OrgExport < Formula
  desc "Org-Mode Batch Exporter CLI"
  homepage "https://github.com/nhoffman/org-export"

  head "https://github.com/nhoffman/org-export.git"
#  sha256 "f7dd5ea0161548574e493b369c6d81a0f0fa7577e58b8cc4dfd3d143b89bef3f"

  def install
    bin.install "org-export"
    Pathname.glob("*.el") do |lisp_file|
      bin.install lisp_file
    end
#    bin.install "*.el"
  end

  test do
    system "tests/test.sh"
  end
end
