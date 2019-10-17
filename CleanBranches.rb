class Cleanbranches < Formula
  desc "delete local git branches that no longer exist on the remote"
  homepage "https://raw.githubusercontent.com/viggin543/go_alfred/master/cleanBrunches"


  version "1"
  

  url "https://raw.githubusercontent.com/viggin543/go_alfred/master/cleanBrunches", :using => :curl


  def install
    puts "installing..."
    bin.install "cleanBrunches"
  end

  def uninstall
    bin.uninstall "cleanBrunches"
  end

  def post_install
    system "echo" , "thank you for using this tap"
  end


end

