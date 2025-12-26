# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "CLI implementation of Claude Code with interactive TUI"
  homepage "https://github.com/2389-research/jeff"
  version "0.3.10"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.10%2Fjeff_0.3.10_Darwin_x86_64.tar.gz?alt=media"
      sha256 "d2e4700c1ca6972e34cd5d3388582e90e573bc8d3bdf4e1df5453b4e5408a605"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.10%2Fjeff_0.3.10_Darwin_arm64.tar.gz?alt=media"
      sha256 "3a6946cb2047d05408333f81b2ae8f780c74d7d091c586f2ed747f615b85a934"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.10%2Fjeff_0.3.10_Linux_x86_64.tar.gz?alt=media"
      sha256 "2316eb1e5bbe00258779a2e4d7d41f5be9cbdcd34556b66e6f0ccd45ae9e5b92"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.10%2Fjeff_0.3.10_Linux_arm64.tar.gz?alt=media"
      sha256 "72eae50e74ee725934eb4d440898f51d7bf4f68003ee1fcbcfd651ba9a028b93"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
