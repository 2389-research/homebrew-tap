# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "CLI implementation of Claude Code with interactive TUI"
  homepage "https://github.com/2389-research/jeff"
  version "0.3.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.5%2Fjeff_0.3.5_Darwin_x86_64.tar.gz?alt=media"
      sha256 "201323acd1ba67439e9aed46c9768098ca39586ff79f94b3239a20845e5089c5"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.5%2Fjeff_0.3.5_Darwin_arm64.tar.gz?alt=media"
      sha256 "e663999658507a8455660ca33f22e181331e95136c406b017555618e8dcb8a87"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.5%2Fjeff_0.3.5_Linux_x86_64.tar.gz?alt=media"
      sha256 "a864454bd847da73b419571c664c8c8b3092888cb4eec068ac9bcd1a95e6ac68"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.5%2Fjeff_0.3.5_Linux_arm64.tar.gz?alt=media"
      sha256 "1ef2f8e9721bea5d330d9ef0dd3cc4330df90460129dee1c53e9a467f3ad77c5"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
