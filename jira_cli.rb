class JiraCli < Formula
  desc "jira command line tool. $ jira_cli -h for usage info"
  homepage "https://github.com/viggin543/jira_cli"
  # sha256 "667e0e03aafc984a27e869ed544d9461fbf9ea0f32d8b16611dbdaf74a18a009"
  version "1"

  url "https://opentikva.s3.amazonaws.com/jira_cli", :using => :curl

  def install
    puts  "fetching ..."
    bin.install "jira_cli"
  end

  def uninstall
    bin.uninstall "jira_cli"
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

