# ABOUTME: Homebrew formula for coven CLI
# ABOUTME: Agent platform command-line interface

class Coven < Formula
  desc "Agent platform CLI for coven"
  homepage "https://github.com/2389-research/coven"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/coven/releases/download/v0.5.0/coven-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "30c50a0f6edfd1d0602043526d71ea45f8f8a884e8068b5df1106252243273d9"
    end
    on_arm do
      url "https://github.com/2389-research/coven/releases/download/v0.5.0/coven-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "539a1a220d550751a11ee707b797bce5b717f87963ea60fc07bb846d1331b1de"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/2389-research/coven/releases/download/v0.5.0/coven-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7fbd32d44c1fd0409e7b6263b34e2c86e5b6e25b2ec117e10f79324c8c572944"
    end
    # TODO: ARM Linux not available yet (OpenSSL cross-compile issues).
    on_arm do
      odie "coven does not yet provide ARM Linux binaries. Build from source with: cargo install coven-cli"
    end
  end

  def install
    bin.install "coven"
  end

  test do
    system "#{bin}/coven", "--version"
  end
end
