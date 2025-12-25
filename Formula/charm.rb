class Charm < Formula
  desc "2389 Charm - Backend tools for terminal applications"
  homepage "https://github.com/2389-research/charm"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/charm/releases/download/v0.19.0/charm_0.19.0_Darwin_x86_64.tar.gz"
      sha256 "d89650197716fbf9ecb8c369c9e9ac23945d4bdc29817aa436f9913df0869950"
    end
    on_arm do
      url "https://github.com/2389-research/charm/releases/download/v0.19.0/charm_0.19.0_Darwin_arm64.tar.gz"
      sha256 "609f5b200f817ee7497fe1809c89d1cdf89a513955d85220524fb322ee92fd95"
    end
  end

  def install
    bin.install "charm"
  end

  test do
    system "#{bin}/charm", "--version"
  end
end
