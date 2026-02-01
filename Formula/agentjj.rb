class Agentjj < Formula
  desc "Agent-oriented porcelain for Jujutsu version control"
  homepage "https://github.com/2389-research/agentjj"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/agentjj/releases/download/v0.1.0/agentjj-x86_64-apple-darwin.tar.gz"
      sha256 "9698bd25981b84375236682ec76315de64f4f1cdb4ed76b9c0f9eae1de22d47d"
    end
    on_arm do
      url "https://github.com/2389-research/agentjj/releases/download/v0.1.0/agentjj-aarch64-apple-darwin.tar.gz"
      sha256 "b67d88761a31e1a0b522acc8606b5d220a2920700a2ad94450571d259a4ff8ee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/2389-research/agentjj/releases/download/v0.1.0/agentjj-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2e70ee965b90f3725bb00e62f2d151a38eb3ee962e49abb71ebc1df57037ec7d"
    end
  end

  def install
    bin.install "agentjj"
  end

  test do
    system "\#{bin}/agentjj", "--version"
  end
end
