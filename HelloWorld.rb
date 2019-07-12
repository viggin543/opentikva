class HelloWorld < Formula
  desc "an elf executable (golang) that prints hello world"
  homepage "https://bitbucket.org/innovid/dvnode/src/HEAD/dv-split/"
  version "0.2.2"

  url "git@bitbucket.org:innovid/dvnode.git", :using => :git


  def install
    bin.install "hello-world/hello"
  end

  def uninstall
    bin.uninstall "hello-world/hello"
  end

end

