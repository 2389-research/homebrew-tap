# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "CLI implementation of Claude Code with interactive TUI"
  homepage "https://github.com/2389-research/jeff"
  version "0.3.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.2%2Fjeff_0.3.2_Darwin_x86_64.tar.gz?alt=media"
      sha256 "5f904cd5a5f1d451a6580957a1367d628bcee1812078d6eff173a6ea2efb58fb"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.2%2Fjeff_0.3.2_Darwin_arm64.tar.gz?alt=media"
      sha256 "8bc69870c03d1d2309a95007677d9517741b9ff74e01fe9c3c8dd3b5a686a60a"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.2%2Fjeff_0.3.2_Linux_x86_64.tar.gz?alt=media"
      sha256 "31a1ad14a2f872f67ea4e26e9b73c9719a109f4790c69f82a6194005b61ac01d"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.2%2Fjeff_0.3.2_Linux_arm64.tar.gz?alt=media"
      sha256 "45395d435e2434a4edb53cb7b014397215b0b0ef0c4f2bf29513ee45003d2960"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
