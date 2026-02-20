# ABOUTME: Homebrew formula for hermit-daemon
# ABOUTME: E2EE messaging daemon with MLS encryption and gRPC API

class HermitDaemon < Formula
  desc "E2EE messaging daemon with MLS encryption and gRPC API"
  homepage "https://github.com/2389-research/hermit"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/hermit/releases/download/v0.1.1/hermit-daemon-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "9c2e3376ece0662d624ea18cb5b384b8f6a1901d7ae372112d8ddaa96fdff33c"
    end
    on_arm do
      url "https://github.com/2389-research/hermit/releases/download/v0.1.1/hermit-daemon-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "4834de1e95c5ef655d96dd1fb779bcf85d362ea013404054a06bfee2f20e0c2a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/2389-research/hermit/releases/download/v0.1.1/hermit-daemon-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "33726153ec52681948adcb099df3657d6a3fbd932d4482522faf844bd4b7ce66"
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
