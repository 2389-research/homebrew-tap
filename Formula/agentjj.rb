class Agentjj < Formula
  desc "Agent-oriented porcelain for Jujutsu version control"
  homepage "https://github.com/2389-research/agentjj"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/agentjj/releases/download/v0.3.0/agentjj-x86_64-apple-darwin.tar.gz"
      sha256 "bb7fe2a29d1fc17583098df79577852806322777c54c5a5d1e5e3d5760b8aea5"
    end
    on_arm do
      url "https://github.com/2389-research/agentjj/releases/download/v0.3.0/agentjj-aarch64-apple-darwin.tar.gz"
      sha256 "432eddf5126f7baf8a8863aadd7ae0cb2c9b528fe445380a2fc1ef226f28c2ce"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/2389-research/agentjj/releases/download/v0.3.0/agentjj-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1cf886cc4162c6c6fba74df99efe465633c2de80307a909b53354772e124d84c"
    end
  end

  def install
    bin.install "agentjj"
  end

  test do
    system "\#{bin}/agentjj", "--version"
  end
end
