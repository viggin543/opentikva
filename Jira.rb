class Jira < Formula
  desc "jira command line tool. $ jira -h for usage info"
  homepage "https://github.com/viggin543/jira"
  sha256 "0ec8b35bd1ec39a86d8fc60575debc70228a342d7a34fefce026d66768ef6a39"
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

