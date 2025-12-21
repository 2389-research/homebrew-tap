class Charm < Formula
  desc "2389 Charm - Backend tools for terminal applications"
  homepage "https://github.com/2389-research/charm"
  version "0.15.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/charm/releases/download/v0.15.3/charm_0.15.3_Darwin_x86_64.tar.gz"
      sha256 "1f9468124adccc887a056f10334726926ba4b82de6f9f505d49c64a0ca51e9f5"
    end
    on_arm do
      url "https://github.com/2389-research/charm/releases/download/v0.15.3/charm_0.15.3_Darwin_arm64.tar.gz"
      sha256 "abbbea04a4cc8fed9f9ac3bba5553fe0e7bf667d5840c4b5fa33db077c984599"
    end
  end

  def install
    bin.install "charm"
  end

  test do
    system "#{bin}/charm", "--version"
  end
end
