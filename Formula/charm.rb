class Charm < Formula
  desc "2389 Charm - Backend tools for terminal applications"
  homepage "https://github.com/2389-research/charm"
  version "0.15.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/charm/releases/download/v0.15.2/charm_0.15.2_Darwin_x86_64.tar.gz"
      sha256 "a6884be64863067468d098712f5ef8dbbec913086fdcf7de15ff4989d97cdb3a"
    end
    on_arm do
      url "https://github.com/2389-research/charm/releases/download/v0.15.2/charm_0.15.2_Darwin_arm64.tar.gz"
      sha256 "0d280c65cab267f79dba8e4dbf982971554bc0b527375a2a413abcdd65da71c7"
    end
  end

  def install
    bin.install "charm"
  end

  test do
    system "#{bin}/charm", "--version"
  end
end
