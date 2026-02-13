class Agentjj < Formula
  desc "Agent-oriented porcelain for Jujutsu version control"
  homepage "https://github.com/2389-research/agentjj"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/agentjj/releases/download/v0.2.1/agentjj-x86_64-apple-darwin.tar.gz"
      sha256 "547881c3ffec140aa3af467bbc11f9e917bc25b056024c6abe33496d2b9ed0e8"
    end
    on_arm do
      url "https://github.com/2389-research/agentjj/releases/download/v0.2.1/agentjj-aarch64-apple-darwin.tar.gz"
      sha256 "b8c31f1b5f34d8d4bc32dd15b6e6593b19ac1556d7fdf205f0c0bb974fbbe142"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/2389-research/agentjj/releases/download/v0.2.1/agentjj-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d3de34eeb16a31d6b40e36ed4e2abf60374278b8b75d150ea197bf5cb6466242"
    end
  end

  def install
    bin.install "agentjj"
  end

  test do
    system "\#{bin}/agentjj", "--version"
  end
end
