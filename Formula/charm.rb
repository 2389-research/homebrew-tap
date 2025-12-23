class Charm < Formula
  desc "2389 Charm - Backend tools for terminal applications"
  homepage "https://github.com/2389-research/charm"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/charm/releases/download/v0.17.0/charm_0.17.0_Darwin_x86_64.tar.gz"
      sha256 "a48ad990b52574bb5e6576604db3b2789d030217a9fb0bfa3a5e6fbf1015ccee"
    end
    on_arm do
      url "https://github.com/2389-research/charm/releases/download/v0.17.0/charm_0.17.0_Darwin_arm64.tar.gz"
      sha256 "06f1ae114abe257a23e589f16d63ecb1e7f63a14111fad31d1b681f1bf58d38a"
    end
  end

  def install
    bin.install "charm"
  end

  test do
    system "#{bin}/charm", "--version"
  end
end
