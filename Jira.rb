class Jira < Formula
  desc "jira command line tool. $ jira -h for usage info"
  homepage "https://github.com/viggin543/jira"
  sha256 "c779ff5c7e73e3df4981312b6fc3c5769df400bbbe663ce3345f97b60d1fa147"
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

