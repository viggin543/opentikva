class Jira < Formula
  desc "jira command line tool. $ jira -h for usage info"
  homepage "https://github.com/viggin543/jira"
  sha256 "dccc683ed274f2e1481079d0a1169023a36d4864736a149a48e2c34aa1e9d15d"
  version "1"

  url "https://opentikva.s3.amazonaws.com/jira_cli.tar.gz", :using => :curl

  def install
    puts `cp completions.bash completions.zsh`
    bin.install "jira"
    bash_completion.install "completions.bash" => "jira"
    zsh_completion.install "completions.zsh" => "_jira"
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
      To enable zsh completions plz
      echo 'source /usr/local/share/zsh/site-functions/_jira' >> ~/.zshrc
    EOS
  end

  def post_install
    puts "******************************************************************************************************************"
    puts "*  jira command line tool                                                                                        *"
    puts "*  usage: jira -h                                                                                                *"
    puts "******************************************************************************************************************"
  end

end

