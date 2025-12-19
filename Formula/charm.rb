class Charm < Formula
  desc "2389 Charm - Backend tools for terminal applications"
  homepage "https://github.com/2389-research/charm"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/charm/releases/download/v0.14.0/charm_0.14.0_Darwin_x86_64.tar.gz"
      sha256 "4566489adbc11b56039980b053fe0f3cc3b155100ba2a7e9929cd8eba281fec5"
    end
    on_arm do
      url "https://github.com/2389-research/charm/releases/download/v0.14.0/charm_0.14.0_Darwin_arm64.tar.gz"
      sha256 "eaa67ac56a95fd4680b02445429c8ca3d3404348e627dbe54bbc804ef7a81797"
    end
  end

  def install
    bin.install "charm"
  end

  test do
    system "#{bin}/charm", "--version"
  end
end
