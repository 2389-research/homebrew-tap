class Charm < Formula
  desc "2389 Charm - Backend tools for terminal applications"
  homepage "https://github.com/2389-research/charm"
  version "0.15.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/charm/releases/download/v0.15.5/charm_0.15.5_Darwin_x86_64.tar.gz"
      sha256 "5b9403443472ac67aeead9689bd859cbcaa3c49c4c37264933bbd9631b261708"
    end
    on_arm do
      url "https://github.com/2389-research/charm/releases/download/v0.15.5/charm_0.15.5_Darwin_arm64.tar.gz"
      sha256 "f633c800217b39b895ab6f276752d496c168ace5ec4a9af24d8f003322fba049"
    end
  end

  def install
    bin.install "charm"
  end

  test do
    system "#{bin}/charm", "--version"
  end
end
