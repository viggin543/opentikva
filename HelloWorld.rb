class Helloworld < Formula
  desc "an elf executable (golang) that prints hello world"
  homepage "https://github.com/viggin543/opentikva"
  version "0.3"
  sha256 "1a4c78930ec0fd12ec475aae9424a3f5d2fe64096c8814f1a70a9f98252cee16"

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

