class Jira < Formula
  desc "jira command line tool. $ jira -h for usage info"
  homepage "https://github.com/viggin543/opentikva/tree/master/scripts/atlassian"
  
  version "1"

  url "https://raw.githubusercontent.com/viggin543/opentikva/master/scripts/atlassian/jira", :using => :curl

  depends_on "jq"
  depends_on "curl"

  def install
    puts  "fetching ..."
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

