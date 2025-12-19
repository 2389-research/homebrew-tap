class Charm < Formula
  desc "2389 Charm - Backend tools for terminal applications"
  homepage "https://github.com/2389-research/charm"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/charm/releases/download/v0.13.0/charm_0.13.0_Darwin_x86_64.tar.gz"
      sha256 "0d38e66012109eb7f3ee42b8da787412b8324433cac8200ec1b730b18ccbf861"
    end
    on_arm do
      url "https://github.com/2389-research/charm/releases/download/v0.13.0/charm_0.13.0_Darwin_arm64.tar.gz"
      sha256 "b531e572da67da444379ce2d87a1508a8358403ab18130acd4f0ff9a9af0934c"
    end
  end

  def install
    bin.install "charm"
  end

  test do
    system "#{bin}/charm", "--version"
  end
end
