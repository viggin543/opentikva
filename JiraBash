class Jira < Formula
  desc "jira command line tool. $ jira -h for usage info"
  homepage "https://github.com/viggin543/opentikva/tree/master/scripts/atlassian"
  sha256 "667e0e03aafc984a27e869ed544d9461fbf9ea0f32d8b16611dbdaf74a18a009"
  version "3"

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

