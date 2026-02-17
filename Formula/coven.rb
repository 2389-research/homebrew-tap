# ABOUTME: Homebrew formula for coven CLI
# ABOUTME: Agent platform command-line interface

class Coven < Formula
  desc "Agent platform CLI for coven"
  homepage "https://github.com/2389-research/coven"
  version "0.5.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/coven/releases/download/v0.5.4/coven-v0.5.4-x86_64-apple-darwin.tar.gz"
      sha256 "49ee87e0130eee1dcdb84cedebee78d267d16facca22627becba81735d895bfe"
    end
    on_arm do
      url "https://github.com/2389-research/coven/releases/download/v0.5.4/coven-v0.5.4-aarch64-apple-darwin.tar.gz"
      sha256 "b97a765cb2dfde3906395b4915f0fbf7c65c123352386cea579105eed4150882"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/2389-research/coven/releases/download/v0.5.4/coven-v0.5.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c4131b6c35b5c8ecc81341c437ed793d55db4c4ce137ff17917f4f11b864c7b9"
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
