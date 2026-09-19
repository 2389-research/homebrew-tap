class Judgement < Formula
  desc "Choose the best answer with TypeSafe Jev"
  homepage "https://github.com/2389-research/judgement"
  version "0.0.1"

  on_macos do
    on_intel do
      url "https://github.com/2389-research/judgement/releases/download/v0.0.1/judgement_0.0.1_darwin_amd64.tar.gz"
      sha256 "8aad261c88ca232765f0185da159eba71d0373b07531e383b2905125b28e95b0"
    end
  end

  on_macos do
    on_arm do
      url "https://github.com/2389-research/judgement/releases/download/v0.0.1/judgement_0.0.1_darwin_arm64.tar.gz"
      sha256 "fac2255a4d48cb7e704a74d1ccd66cd6a5ceabea727771752348bee45edf6003"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/2389-research/judgement/releases/download/v0.0.1/judgement_0.0.1_linux_amd64.tar.gz"
      sha256 "bc68cc1cacdca3c0a7f8e35af48be01a7d0d3232807e0d8fd9a3bbc8b9312db7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/2389-research/judgement/releases/download/v0.0.1/judgement_0.0.1_linux_arm64.tar.gz"
      sha256 "7028e43f2d7fa993a7c6b657fa199b7e095653f8697ce3a8ebe140e84b04b021"
    end
  end

  def install
    bin.install "judgement"
  end

  test do
    system "#{bin}/judgement", "--version"
  end
end
