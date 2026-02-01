class Agentjj < Formula
  desc "Agent-oriented porcelain for Jujutsu version control"
  homepage "https://github.com/2389-research/agentjj"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/agentjj/releases/download/v0.1.0/agentjj-x86_64-apple-darwin.tar.gz"
      sha256 "ab6756f2ab7e353ab46afe3bc425bd8381c1277d1706d7f8978d95eee65424cb"
    end
    on_arm do
      url "https://github.com/2389-research/agentjj/releases/download/v0.1.0/agentjj-aarch64-apple-darwin.tar.gz"
      sha256 "06541ee4ea6cd08a107893234a4b3606be3d369331072ff0b43e08163ec520de"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/2389-research/agentjj/releases/download/v0.1.0/agentjj-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "45f6dc8d1f60b1f859d29cb1d4688c1c26ed00e3e6daa561db824726bb61f71e"
    end
  end

  def install
    bin.install "agentjj"
  end

  test do
    system "\#{bin}/agentjj", "--version"
  end
end
