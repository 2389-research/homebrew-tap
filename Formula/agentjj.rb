class Agentjj < Formula
  desc "Agent-oriented porcelain for Jujutsu version control"
  homepage "https://github.com/2389-research/agentjj"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/agentjj/releases/download/v0.3.1/agentjj-x86_64-apple-darwin.tar.gz"
      sha256 "3d03a2dc7a09b82cdb1618eb2d450ab164e43074e72ae865ad447aa563ac19d0"
    end
    on_arm do
      url "https://github.com/2389-research/agentjj/releases/download/v0.3.1/agentjj-aarch64-apple-darwin.tar.gz"
      sha256 "6d60b0970e9df0445fa2d38e8eeb42483c6d5115ac4ad7e9458b6e25fc4d0095"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/2389-research/agentjj/releases/download/v0.3.1/agentjj-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4389de189cf92e6a2dc21f25363783d4c1a19224426be10bdef24ff65429b34a"
    end
  end

  def install
    bin.install "agentjj"
  end

  test do
    system "\#{bin}/agentjj", "--version"
  end
end
