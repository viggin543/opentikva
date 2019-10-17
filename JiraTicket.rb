class Jiraticket < Formula
  desc "create a jira ticket from the command line"
  homepage "https://raw.githubusercontent.com/viggin543/go_alfred/master/createJiraTiket/createTicket"

  version "1"
  

  url "https://raw.githubusercontent.com/viggin543/go_alfred/master/createJiraTiket/createTicket", :using => :curl

  depends_on "jq"
  depends_on "curl"

  def install
    system  "fetching ..."
    bin.install "createTicket"
  end

  def uninstall
    bin.uninstall "createTicket"
  end

end

