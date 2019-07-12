class Helloworld < Formula
  desc "an elf executable (golang) that prints hello world"
  homepage "https://bitbucket.org/innovid/dvnode/src/HEAD/dv-split/"
  version "0.2.2"

  url "https://ln.sync.com/dl/68ba3f680/mbn8jw9f-ipi5e564-en4q65k3-isshisid", :using => :curl


  def install
    bin.install "hello"
  end

  def uninstall
    bin.uninstall "hello"
  end

end

