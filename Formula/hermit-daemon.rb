# ABOUTME: Homebrew formula for hermit-daemon
# ABOUTME: E2EE messaging daemon with MLS encryption and gRPC API

class HermitDaemon < Formula
  desc "E2EE messaging daemon with MLS encryption and gRPC API"
  homepage "https://github.com/2389-research/hermit"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/2389-research/hermit/releases/download/v0.1.0/hermit-daemon-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/2389-research/hermit/releases/download/v0.1.0/hermit-daemon-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/2389-research/hermit/releases/download/v0.1.0/hermit-daemon-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_arm do
      odie "hermit-daemon does not yet provide ARM Linux binaries. Build from source with: cargo install --git https://github.com/2389-research/hermit.git hermit-daemon"
    end
  end

  def install
    bin.install "hermit-daemon"
  end

  test do
    system "#{bin}/hermit-daemon", "--version"
  end
end
