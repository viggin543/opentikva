class Helloworld < Formula
  desc "an elf executable (golang) that prints hello world"
  homepage "https://github.com/viggin543/opentikva"
  version "0.3"

  url " https://opentikva.s3.amazonaws.com/hello", :using => :curl


  def install
    `echo 'installing hello world...'`
    `pwd`
    `ls -la`
    bin.install "hello"
  end

  def uninstall
    bin.uninstall "hello"
  end

end

