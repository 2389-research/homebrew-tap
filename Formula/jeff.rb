# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "CLI implementation of Claude Code with interactive TUI"
  homepage "https://github.com/2389-research/jeff"
  version "0.3.0-beta.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.0-beta.1%2Fjeff_0.3.0-beta.1_Darwin_x86_64.tar.gz?alt=media"
      sha256 ""
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.0-beta.1%2Fjeff_0.3.0-beta.1_Darwin_arm64.tar.gz?alt=media"
      sha256 ""
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.0-beta.1%2Fjeff_0.3.0-beta.1_Linux_x86_64.tar.gz?alt=media"
      sha256 ""
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.0-beta.1%2Fjeff_0.3.0-beta.1_Linux_arm64.tar.gz?alt=media"
      sha256 ""
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
