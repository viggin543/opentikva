class Jira < Formula
  desc "jira command line tool. $ jira -h for usage info"
  homepage "https://github.com/viggin543/opentikva/tree/master/scripts/atlassian"
  # sha256 "c8efd436ad04e23f3a7de942db56e3c790f8e08bb3b8a3cb313cbbe4f4be23d2"
  version "2"

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

