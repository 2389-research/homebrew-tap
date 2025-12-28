# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "CLI implementation of Claude Code with interactive TUI"
  homepage "https://github.com/2389-research/jeff"
  version "0.3.15"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.15%2Fjeff_0.3.15_Darwin_x86_64.tar.gz?alt=media"
      sha256 "a1e14fb33c3051b168e179ac9032d0cf69dbb8081ef62aee407efd186d7920dc"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.15%2Fjeff_0.3.15_Darwin_arm64.tar.gz?alt=media"
      sha256 "3fbff9ea1827971ec628fc1c5cfdc351233d0f337dbf2d6ba0cff5e53026f7a5"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.15%2Fjeff_0.3.15_Linux_x86_64.tar.gz?alt=media"
      sha256 "254160760cfac053d1a657c0d970411b3d91e75f4dd16bdf32ac85c38dd0004f"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.15%2Fjeff_0.3.15_Linux_arm64.tar.gz?alt=media"
      sha256 "1b4777d93aac7054a2a1d5ce99d294bfa924ca5cd33494a3d42dc6c7eaa7679d"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
