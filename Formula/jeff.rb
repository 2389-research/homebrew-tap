# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "CLI implementation of Claude Code with interactive TUI"
  homepage "https://github.com/2389-research/jeff"
  version "0.3.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.9%2Fjeff_0.3.9_Darwin_x86_64.tar.gz?alt=media"
      sha256 "337a53bbb5412aef0c59c272f5290ce5540362b61666217f19f42d59ae9805cd"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.9%2Fjeff_0.3.9_Darwin_arm64.tar.gz?alt=media"
      sha256 "a84c05c09993e5d7b62d09f056b2d230662f10d9a122065924cd8d7d7ea0b10b"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.9%2Fjeff_0.3.9_Linux_x86_64.tar.gz?alt=media"
      sha256 "33759fec5dcc4798b22d49359f116f6f6cb929f9fffaa1120b9dbe420ecfb22a"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.9%2Fjeff_0.3.9_Linux_arm64.tar.gz?alt=media"
      sha256 "d42ab92612cc1181a45f1d5bcb7b26b414a79f06173fa16b732f234797e9345f"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
