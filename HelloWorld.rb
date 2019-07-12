class Helloworld < Formula
  desc "an elf executable (golang) that prints hello world"
  homepage "https://github.com/viggin543/opentikva"
  version "0.3"
  sha256 "310c2292b237daffe673f0ec06d3a0202104b03017d00dad9085614ba61cbecc"

  url "https://opentikva.s3.amazonaws.com/hello", :using => :curl


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

