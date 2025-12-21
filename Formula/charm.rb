class Charm < Formula
  desc "2389 Charm - Backend tools for terminal applications"
  homepage "https://github.com/2389-research/charm"
  version "0.15.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/charm/releases/download/v0.15.4/charm_0.15.4_Darwin_x86_64.tar.gz"
      sha256 "ac7dc154d84df454160c107b69258e2f589a003c5bda56798583400c1766f0ff"
    end
    on_arm do
      url "https://github.com/2389-research/charm/releases/download/v0.15.4/charm_0.15.4_Darwin_arm64.tar.gz"
      sha256 "9d4ddab0ad122a0dacc8b6660ed1d3be955c01b0bc034a26f723b0a397a2bf57"
    end
  end

  def install
    bin.install "charm"
  end

  test do
    system "#{bin}/charm", "--version"
  end
end
