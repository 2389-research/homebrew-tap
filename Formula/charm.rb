class Charm < Formula
  desc "2389 Charm - Backend tools for terminal applications"
  homepage "https://github.com/2389-research/charm"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/charm/releases/download/v0.15.0/charm_0.15.0_Darwin_x86_64.tar.gz"
      sha256 "b732e2f67df3f976c5b4dd3e8d072d19e06d0d1525dfd70ce771f397d03a6cf9"
    end
    on_arm do
      url "https://github.com/2389-research/charm/releases/download/v0.15.0/charm_0.15.0_Darwin_arm64.tar.gz"
      sha256 "09e06f0ffd21080ea98925b3b29fd9c59545c11483344cda104e6c55f7f87479"
    end
  end

  def install
    bin.install "charm"
  end

  test do
    system "#{bin}/charm", "--version"
  end
end
