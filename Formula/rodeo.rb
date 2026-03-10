# ABOUTME: Homebrew formula for rodeo CLI
# ABOUTME: MCP proxy and CLI for meme-rodeo

class Rodeo < Formula
  desc "MCP proxy and CLI for meme-rodeo"
  homepage "https://github.com/harperreed/meme-rodeo"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://storage.googleapis.com/meme-rodeo.appspot.com/releases/cli/v0.1.0/rodeo-v0.1.0-darwin-amd64.tar.gz"
      sha256 "99c023467a7935adeab2b7c4ebade29ad7c6584410370b3d48f8579d94c66f3a"
    end
    on_arm do
      url "https://storage.googleapis.com/meme-rodeo.appspot.com/releases/cli/v0.1.0/rodeo-v0.1.0-darwin-arm64.tar.gz"
      sha256 "d3b93a76c76601edf4aae956967795bc48360cb9ec4ed0589e20bdfad7018ce3"
    end
  end

  on_linux do
    on_intel do
      url "https://storage.googleapis.com/meme-rodeo.appspot.com/releases/cli/v0.1.0/rodeo-v0.1.0-linux-amd64.tar.gz"
      sha256 "c59eaa58dab6828af013bd5668311bb9f0167a77275ad73551ef938d4d2d9d44"
    end
  end

  def install
    bin.install "rodeo"
  end

  test do
    system "#{bin}/rodeo", "--help"
  end
end
