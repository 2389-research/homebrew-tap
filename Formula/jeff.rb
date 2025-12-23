# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "CLI implementation of Claude Code with interactive TUI"
  homepage "https://github.com/2389-research/jeff"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.0%2Fjeff_0.3.0_Darwin_x86_64.tar.gz?alt=media"
      sha256 "234a53378787ec48697f10e022f038a27ae02571228d79f90d5141b51ab39105"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.0%2Fjeff_0.3.0_Darwin_arm64.tar.gz?alt=media"
      sha256 "de803d9872031c203dff76fabb1cbf5bb52af413b82e75ae526bfaf27843c4a1"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.0%2Fjeff_0.3.0_Linux_x86_64.tar.gz?alt=media"
      sha256 "2bda2601fb0d78b2e4d58a9d33c33a785b6bb958ee06bf8c5316ff00702dc5be"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.0%2Fjeff_0.3.0_Linux_arm64.tar.gz?alt=media"
      sha256 "b6258a65382c47e7d81f56ed8f603439d4d397ce8abd94aeea40cc1ccd02e0e4"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
