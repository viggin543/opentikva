class PullRequests < Formula
  desc "an elf executable (golang) that prints hello world"
  homepage "https://github.com/viggin543/go_alfred/tree/master/github-pull-requests"

  version "0.3"
  

  url "https://opentikva.s3.amazonaws.com/PullRequests", :using => :curl


  def install
    system "echo" , "fetching binaries..."
    bin.install "PullRequests"
  end

  def uninstall
    bin.uninstall "PullRequests"
  end

  def post_install
    system "echo" , "thank you for using this tap"
  end


end

