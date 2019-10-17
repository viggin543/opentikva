class Cleanbranches < Formula
  desc "delete local git branches that no longer exist on the remote"
  homepage "https://raw.githubusercontent.com/viggin543/go_alfred/master/cleanBrunches"
  sha256 "9fbe03e2dc7aea6c331b81feb787bf72557599b09d71085b469f538e542b080f"


  version "1"
  

  url "https://raw.githubusercontent.com/viggin543/go_alfred/master/cleanBrunches", :using => :curl

  depends_on "git"

  def install
    puts "installing..."
    bin.install "cleanBrunches"
  end

  def uninstall
    bin.uninstall "cleanBrunches"
  end

  def post_install
    puts "******************************************************************************************************************"
    puts "*                                                                                                                *"
    puts "*                                                                                                                *"
    puts "*  run cleanBrunches in a git repo to delete old and obsolete feature brunches that were deleted on the remote   *"
    puts "*                                                                                                                *"
    puts "*                                                                                                                *"
    puts "******************************************************************************************************************"
  end


end

