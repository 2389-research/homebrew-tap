# ABOUTME: Homebrew formula for coven CLI
# ABOUTME: Agent platform command-line interface

class Coven < Formula
  desc "Agent platform CLI for coven"
  homepage "https://github.com/2389-research/coven"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/coven/releases/download/v0.5.1/coven-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "61c14564c9073b4edd14402d81bfca9dc682b1ee85d10bd2095050498617f9cd"
    end
    on_arm do
      url "https://github.com/2389-research/coven/releases/download/v0.5.1/coven-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "83236419281971999d4861de4901d91564d566d32a2c3b05073997883526b4b4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/2389-research/coven/releases/download/v0.5.1/coven-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a5c1cf7f35f4144c2093baa7d9933be822a75ecf3a390bf80d8ecc25bb64ba93"
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
