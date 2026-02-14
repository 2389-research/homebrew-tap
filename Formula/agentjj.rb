class Agentjj < Formula
  desc "Agent-oriented porcelain for Jujutsu version control"
  homepage "https://github.com/2389-research/agentjj"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/agentjj/releases/download/v0.3.0/agentjj-x86_64-apple-darwin.tar.gz"
      sha256 "e2314723bc05af2f75a67d74efdc59c74a585b549d12f6702081d6498f599251"
    end
    on_arm do
      url "https://github.com/2389-research/agentjj/releases/download/v0.3.0/agentjj-aarch64-apple-darwin.tar.gz"
      sha256 "39e9eccec512025ff207eeecb34dbde09b2b26f745090634c793885df9f0bb7a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/2389-research/agentjj/releases/download/v0.3.0/agentjj-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "89364f8345dbf97e12edbd7bfaeab5bb5c7ac286d5352598bbef9f67d8c84a8d"
    end
  end

  def install
    bin.install "agentjj"
  end

  test do
    system "\#{bin}/agentjj", "--version"
  end
end
