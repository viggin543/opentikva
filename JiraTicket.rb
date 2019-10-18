class Jiraticket < Formula
  desc "create a jira ticket from the command line"
  homepage "https://raw.githubusercontent.com/viggin543/go_alfred/master/createJiraTiket/createTicket"
  # sha256 "bea5ac9efd1f1cb1582327fbea2a6329c6ad2488fb74f37280c1c67c68f547bc"
  version "1"
  

  url "https://raw.githubusercontent.com/viggin543/go_alfred/master/createJiraTiket/createTicket", :using => :curl

  depends_on "jq"
  depends_on "curl"

  def install
    puts  "fetching ..."
    bin.install "createTicket"
  end

  def uninstall
    bin.uninstall "createTicket"
  end


  def post_install
    puts "******************************************************************************************************************"
    puts "*                                                                                                                *"
    puts "*                                                                                                                *"
    puts "*  create jira tickets using the command line                                                                    *"
    puts "*  usage: createTicket <title> <description>                                                                     *"
    puts "*                                                                                                                *"
    puts "*                                                                                                                *"
    puts "******************************************************************************************************************"
  end

end

