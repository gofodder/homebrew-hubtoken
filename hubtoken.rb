require "language/go"

class Hubtoken < Formula
  desc "Manage Github personal access tokens from the CLI"
  homepage "https://github.com/gofodder/hubtoken"
  url "https://github.com/gofodder/hubtoken/archive/1.0.4.tar.gz"
  sha256 "749217240d1b4431288eeadd95f54fd5736166a39b59355c061e3db089f30d76"
  head "https://github.com/gofodder/hubtoken.git"

  depends_on "go" => :build
  depends_on "godep" => :build

  def install
    ENV["GOPATH"] = buildpath
    dir = buildpath/"src/github.com/gofodder/hubtoken/"
    dir.install Dir["*"]
    ln_s buildpath/"src", dir
    cd dir do
      system "godep", "restore"
      system "go", "build", "-o", bin/"hubtoken", "main.go"
    end
  end
end
