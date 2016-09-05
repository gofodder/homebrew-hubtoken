require "language/go"

class Hubtoken < Formula
  desc "Manage Github personal access tokens from the CLI"
  homepage "https://github.com/gofodder/hubtoken"
  url "https://github.com/gofodder/hubtoken/archive/1.0.4.tar.gz"
  sha256 "5079e51ca937d5370d3987d7247be974ea33b91d31cef4d4f6b34acd0acae399"
  head "https://github.com/gofodder/hubtoken.git"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    dir = buildpath/"src/github.com/gofodder/hubtoken/"
    dir.install Dir["*"]
    ln_s buildpath/"src", dir
    cd dir do
      system "go", "build", "-o", bin/"hubtoken", "main.go"
    end
  end
end
