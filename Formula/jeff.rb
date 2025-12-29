# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "CLI implementation of Claude Code with interactive TUI"
  homepage "https://github.com/2389-research/jeff"
  version "0.3.17"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.17%2Fjeff_0.3.17_Darwin_x86_64.tar.gz?alt=media"
      sha256 "034c89a26da0331462d2f1844743bc6368d808c5cf3e133c90948ef65fee6e0e"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.17%2Fjeff_0.3.17_Darwin_arm64.tar.gz?alt=media"
      sha256 "7471011fd88553efd1dcaf5518345d56e06865de95256e9ddfb0d83a01c87fe6"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.17%2Fjeff_0.3.17_Linux_x86_64.tar.gz?alt=media"
      sha256 "30bae311d84cb9d78b286efcee132399b41aef0161dc3f403b7f40e244668ec0"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.17%2Fjeff_0.3.17_Linux_arm64.tar.gz?alt=media"
      sha256 "2e641d72509d56826a736d06c0ec644f0d0f0eeaf02f7df4e3090087e3d45817"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
