# ABOUTME: Homebrew formula for coven CLI
# ABOUTME: Agent platform command-line interface

class Coven < Formula
  desc "Agent platform CLI for coven"
  homepage "https://github.com/2389-research/coven"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/coven/releases/download/v0.4.1/coven-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "fd6ae67fbbe81362d5faa7cc585caad026e20de88c1e99dab9bcec3e2de178e7"
    end
    on_arm do
      url "https://github.com/2389-research/coven/releases/download/v0.4.1/coven-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "318b9fa8ca295f144f577340734facc734dd74bb1254cb915f4b99d844f8d403"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/2389-research/coven/releases/download/v0.4.1/coven-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0439e3acbf84c98fbaea21efb8c395a62a14ddb7cd92fbb5d7c1ebafb5bd328e"
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
