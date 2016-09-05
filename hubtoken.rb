class Hubtoken < Formula
  desc "Manage Github personal access tokens from the CLI"
  homepage "https://github.com/gofodder/hubtoken"
  url "https://github.com/gofodder/hubtoken/releases/download/1.0.4/hubtoken-1.0.4-osx.tar.gz"
  sha256 "749217240d1b4431288eeadd95f54fd5736166a39b59355c061e3db089f30d76"

  def install
    bin.install Dir["hubtoken"]
  end
end
