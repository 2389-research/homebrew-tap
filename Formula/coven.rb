# ABOUTME: Homebrew formula for coven CLI
# ABOUTME: Agent platform command-line interface

class Coven < Formula
  desc "Agent platform CLI for coven"
  homepage "https://github.com/2389-research/coven"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/coven/releases/download/v0.3.0/coven-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "8eb300c7d2a9e159d8e334026fc8faa19af16a7ecead729258e5624933cf17c8"
    end
    on_arm do
      url "https://github.com/2389-research/coven/releases/download/v0.3.0/coven-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "e64e005501ba4f74ae201824124d9f1192a16b7e090a4b1302bb851f4e82aabb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/2389-research/coven/releases/download/v0.3.0/coven-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "705521afda967371fa7b7f9ddfa96a7056ba0417b5f464651ab00f87e488acda"
    end
    # ARM Linux not available yet
  end

  def install
    bin.install "coven"
  end

  test do
    system "#{bin}/coven", "--version"
  end
end
