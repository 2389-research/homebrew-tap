# ABOUTME: Homebrew formula for coven CLI
# ABOUTME: Agent platform command-line interface

class Coven < Formula
  desc "Agent platform CLI for coven"
  homepage "https://github.com/2389-research/coven"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/coven/releases/download/v0.5.2/coven-v0.5.2-x86_64-apple-darwin.tar.gz"
      sha256 "47544dceada9ef84a56b3b75a3ccd8e60ecd5e549c66cedaf042132cf0fe10a2"
    end
    on_arm do
      url "https://github.com/2389-research/coven/releases/download/v0.5.2/coven-v0.5.2-aarch64-apple-darwin.tar.gz"
      sha256 "c45c53ae034293e92e798cd31f52790c1059c0e282605c65e94b6883ab343f95"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/2389-research/coven/releases/download/v0.5.2/coven-v0.5.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "58ef2f655778075185c61f36e96410647f63be911014da06bf23cf510600d078"
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
