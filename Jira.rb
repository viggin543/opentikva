class Jira < Formula
  desc "jira command line tool. $ jira -h for usage info"
  homepage "https://github.com/viggin543/jira"
  sha256 "0ea9d6a6e740e0a84b5b068e7c22c8a157b194d8f82153ae70826f945527ca28"
  version "1"

  url "https://opentikva.s3.amazonaws.com/jira", :using => :curl

  def install
    puts  "fetching binary..."
    bin.install "jira"
  end

  def uninstall
    bin.uninstall "jira"
  end


  def post_install
    puts "******************************************************************************************************************"
    puts "*                                                                                                                *"
    puts "*                                                                                                                *"
    puts "*  jira command line tool                                                                                        *"
    puts "*  usage: jira -h                                                                                                *"
    puts "*                                                                                                                *"
    puts "*                                                                                                                *"
    puts "******************************************************************************************************************"
  end

end

