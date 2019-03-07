class Traceviz < Formula
  desc "script for visualizing traceroute data using graphviz"
  homepage "https://hokstad.com/traceviz-visualizing-traceroute-output-with-graphivz"

  version "0.1"
  url "http://www.hokstad.com/static/traceviz.rb", :using => :curl
  sha256 "597d80b93d0525a8c913cf260a05a4c49fbba95b4316a2431cb60ff7d7c21973"
  
  depends_on "ruby"

  def install
    mv "traceviz.rb", "traceviz"
    bin.install "traceviz"
  end

end
