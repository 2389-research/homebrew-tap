class Charm < Formula
  desc "2389 Charm - Backend tools for terminal applications"
  homepage "https://github.com/2389-research/charm"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/charm/releases/download/v0.20.0/charm_0.20.0_Darwin_x86_64.tar.gz"
      sha256 "e335e3766f386f066575c69ec4fac9dd6d0d8a9e280f49bc26919f05949efb6b"
    end
    on_arm do
      url "https://github.com/2389-research/charm/releases/download/v0.20.0/charm_0.20.0_Darwin_arm64.tar.gz"
      sha256 "2c54fbd15338510f8e03003fb108201f8d812dd56123cd2097ebbeffad386b30"
    end
  end

  def install
    bin.install "charm"
  end

  test do
    system "#{bin}/charm", "--version"
  end
end
