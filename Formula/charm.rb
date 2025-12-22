class Charm < Formula
  desc "2389 Charm - Backend tools for terminal applications"
  homepage "https://github.com/2389-research/charm"
  version "0.16.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/charm/releases/download/v0.16.0/charm_0.16.0_Darwin_x86_64.tar.gz"
      sha256 "d33a9d33fb8af671101b24f2f67f71083bfd3bd45c811acf2d083488489e0861"
    end
    on_arm do
      url "https://github.com/2389-research/charm/releases/download/v0.16.0/charm_0.16.0_Darwin_arm64.tar.gz"
      sha256 "86adb08a6fdb7aa53aa9db46812eacbcd77651ff2cc55194e15ab0b7d74991a4"
    end
  end

  def install
    bin.install "charm"
  end

  test do
    system "#{bin}/charm", "--version"
  end
end
