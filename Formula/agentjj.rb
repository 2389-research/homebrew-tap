class Agentjj < Formula
  desc "Agent-oriented porcelain for Jujutsu version control"
  homepage "https://github.com/2389-research/agentjj"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/agentjj/releases/download/v0.2.0/agentjj-x86_64-apple-darwin.tar.gz"
      sha256 "10b2f114443a355e1f61dabde080d7b40ba1a8d8049adb44821c4a59d9f26ce5"
    end
    on_arm do
      url "https://github.com/2389-research/agentjj/releases/download/v0.2.0/agentjj-aarch64-apple-darwin.tar.gz"
      sha256 "a8df8f7be322755ee3d3d8a4a41cb3c359f1fa8763149eb59587b2fd3ab59627"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/2389-research/agentjj/releases/download/v0.2.0/agentjj-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0eec6cd4f552b223484c69e77125e22094bf9be5383d0344ef1329895e136e25"
    end
  end

  def install
    bin.install "agentjj"
  end

  test do
    system "\#{bin}/agentjj", "--version"
  end
end
