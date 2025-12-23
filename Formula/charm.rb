class Charm < Formula
  desc "2389 Charm - Backend tools for terminal applications"
  homepage "https://github.com/2389-research/charm"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/charm/releases/download/v0.18.0/charm_0.18.0_Darwin_x86_64.tar.gz"
      sha256 "e26186eeeef48f1be57108675939b474ae17574759a47d4b57fe816a0d564805"
    end
    on_arm do
      url "https://github.com/2389-research/charm/releases/download/v0.18.0/charm_0.18.0_Darwin_arm64.tar.gz"
      sha256 "1bb6575802e49cc3a76187b63ce42e49d60b684470642aab5734dd994da159c8"
    end
  end

  def install
    bin.install "charm"
  end

  test do
    system "#{bin}/charm", "--version"
  end
end
