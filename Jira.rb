class Jira < Formula
  desc "jira command line tool. $ jira -h for usage info"
  homepage "https://github.com/viggin543/jira"
  sha256 "deeb7733707ce1001d556c8bf751bbdb9a83838dd78d91396757b60470974466"
  version "1"

  url "https://opentikva.s3.amazonaws.com/jira", :using => :curl
  url "https://raw.githubusercontent.com/viggin543/jira/master/completions.bash", :using => :curl

  def install
    puts  "fetching go binary..."
    bin.install "jira"
    bash_completion.install "completions.bash"
    zsh_completion.install "completions.bash"
  end

  def uninstall
    bin.uninstall "jira"
    homeDir = File.expand_path('~')
    File.delete("#{homeDir}/.jira_epics") if File.exist?("#{homeDir}/.jira_epics")
    File.delete("#{homeDir}/.jira_history") if File.exist?("#{homeDir}/.jira_history")
    File.delete("#{homeDir}/.jira.yaml") if File.exist?("#{homeDir}/.jira.yaml")
  end

  def caveats
    <<~EOS
      Make sure you initialized proper env vars / ~/.jira.yaml
    EOS
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

