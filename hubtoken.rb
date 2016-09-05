class Hubtoken < Formula
  desc "Manage Github personal access tokens from the CLI"
  homepage "https://github.com/gofodder/hubtoken"
  url "https://github.com/gofodder/hubtoken/releases/download/v1.0.5/hubtoken-1.0.5-osx.tar.gz"
  sha256 ""

  def install
    bin.install Dir["hubtoken"]
  end
end
