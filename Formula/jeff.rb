# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "CLI implementation of Claude Code with interactive TUI"
  homepage "https://github.com/2389-research/jeff"
  version "0.3.16"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.16%2Fjeff_0.3.16_Darwin_x86_64.tar.gz?alt=media"
      sha256 "08de4cf881dcdd42b42beebd015f895494dc283d419ce90889e64e21ad7f9b95"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.16%2Fjeff_0.3.16_Darwin_arm64.tar.gz?alt=media"
      sha256 "2a97d567fbd85a4404576375977326c821de4589109b7555d2c85624b8e0fae6"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.16%2Fjeff_0.3.16_Linux_x86_64.tar.gz?alt=media"
      sha256 "16af7926614a0f699fa1192ff88aeddf38dbd1a50de2e2800edfd036ee1d9122"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.16%2Fjeff_0.3.16_Linux_arm64.tar.gz?alt=media"
      sha256 "764e523bd6dde3810b8453c204edb2a2d5bcbb09d18db0c6bd922507bfeb84d8"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
