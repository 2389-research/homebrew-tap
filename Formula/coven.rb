# ABOUTME: Homebrew formula for coven CLI
# ABOUTME: Agent platform command-line interface

class Coven < Formula
  desc "Agent platform CLI for coven"
  homepage "https://github.com/2389-research/coven"
  version "0.5.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/coven/releases/download/v0.5.5/coven-v0.5.5-x86_64-apple-darwin.tar.gz"
      sha256 "32be110c3261600b3958e7b9afae926abcdd365469dffbccf5e34efe7ed2a883"
    end
    on_arm do
      url "https://github.com/2389-research/coven/releases/download/v0.5.5/coven-v0.5.5-aarch64-apple-darwin.tar.gz"
      sha256 "45e1873ba622e4129f2b921164c89a3c12a37ceaf7d27fade86f4e3547f07f33"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/2389-research/coven/releases/download/v0.5.5/coven-v0.5.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a7c4b122132f3ddd96de71e50c7c731a6a346289fdf9ad88bd12cf9b342b95fd"
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
