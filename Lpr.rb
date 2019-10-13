class PullRequests < Formula
  desc "an elf executable (golang) that prints hello world"
  homepage "https://github.com/viggin543/go_alfred/tree/master/github-pull-requests"
  sha256 "6e238fd47be9fb52c12672e68266caa8cf9ceee8467b621259de7e12415117c6"

  version "0.3"
  

  url "https://opentikva.s3.amazonaws.com/lpr", :using => :curl


  def install
    system "echo" , "fetching binaries..."
    bin.install "lpr"
  end

  def uninstall
    bin.uninstall "lpr"
  end

  def post_install
    system "echo" , "thank you for using this tap"
  end


end

