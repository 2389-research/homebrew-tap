class Charm < Formula
  desc "2389 Charm - Backend tools for terminal applications"
  homepage "https://github.com/2389-research/charm"
  version "0.15.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/charm/releases/download/v0.15.1/charm_0.15.1_Darwin_x86_64.tar.gz"
      sha256 "6446c4d2f8456a5ac78733e538efeb84b864685d6dcd3d1601b054be722867e3"
    end
    on_arm do
      url "https://github.com/2389-research/charm/releases/download/v0.15.1/charm_0.15.1_Darwin_arm64.tar.gz"
      sha256 "13db605b52c621dfeda2ad581a5b1dc8682c80db2afc7c9abfe5ac77386ee883"
    end
  end

  def install
    bin.install "charm"
  end

  test do
    system "#{bin}/charm", "--version"
  end
end
