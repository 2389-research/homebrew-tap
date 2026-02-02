# ABOUTME: Homebrew formula for coven CLI
# ABOUTME: Agent platform command-line interface

class Coven < Formula
  desc "Agent platform CLI for coven"
  homepage "https://github.com/2389-research/coven"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/coven/releases/download/v0.4.0/coven-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "e996de47174ad27d323bc2a3fcec43ecfae7c43b9fb7507d36c6f98329ecbbb3"
    end
    on_arm do
      url "https://github.com/2389-research/coven/releases/download/v0.4.0/coven-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "0bd2266f71847bcbae58f728af52f45aa6de960a928fe09ca5620c17222f9080"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/2389-research/coven/releases/download/v0.4.0/coven-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c984ede90ff7f8c25f10f7597db421f92c2e2a2eb109fd863ae7fd1c56eb4df3"
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
