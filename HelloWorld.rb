class Helloworld < Formula
  desc "an elf executable (golang) that prints hello world"
  homepage "https://github.com/viggin543/opentikva"
  version "0.3"

  url "https://ln.sync.com/dl/68ba3f680/mbn8jw9f-ipi5e564-en4q65k3-isshisid", :using => :curl


  def install
    bin.install "hello"
  end

  def uninstall
    bin.uninstall "hello"
  end

end

