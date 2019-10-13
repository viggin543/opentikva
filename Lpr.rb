class Lpr < Formula
  desc "an elf executable (golang) that prints hello world"
  homepage "https://github.com/viggin543/go_alfred/tree/master/github-pull-requests"
  version "0.3"
  

  url "https://opentikva.s3.amazonaws.com/lpr", :using => :curl


  def install
    system "echo" , "fetching binaries..."
    bin.install "pull-requests"
  end

  def uninstall
    bin.uninstall "pull-requests"
  end

  def post_install
    system "echo" , "thank you for using this tap"
  end


end

