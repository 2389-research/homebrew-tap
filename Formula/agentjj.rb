class Agentjj < Formula
  desc "Agent-oriented porcelain for Jujutsu version control"
  homepage "https://github.com/2389-research/agentjj"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/agentjj/releases/download/v0.1.1/agentjj-x86_64-apple-darwin.tar.gz"
      sha256 "e1b43c4efb7c21134731a3ba51d2b64eec4f004ef494693d6f8717c0414b2021"
    end
    on_arm do
      url "https://github.com/2389-research/agentjj/releases/download/v0.1.1/agentjj-aarch64-apple-darwin.tar.gz"
      sha256 "c7d3eb233e1bc3694f3994a0f88d3cdaf08df4981bf0b2dc055ffc4919374264"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/2389-research/agentjj/releases/download/v0.1.1/agentjj-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2a2be56754f26b966e38b29ba7bc23b8391b8595bffbfb40775b7424f074c7e8"
    end
  end

  def install
    bin.install "agentjj"
  end

  test do
    system "\#{bin}/agentjj", "--version"
  end
end
