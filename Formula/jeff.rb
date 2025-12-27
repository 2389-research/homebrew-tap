# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "CLI implementation of Claude Code with interactive TUI"
  homepage "https://github.com/2389-research/jeff"
  version "0.3.14"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.14%2Fjeff_0.3.14_Darwin_x86_64.tar.gz?alt=media"
      sha256 "9598824c8e11a37bc47e71ea55b487eccf52729dd710846768fe002124ab9394"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.14%2Fjeff_0.3.14_Darwin_arm64.tar.gz?alt=media"
      sha256 "a383efccdc4c9abcab74df8d36eabbc8f3d2aa940e85deb4a2c5a77792abfb92"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.14%2Fjeff_0.3.14_Linux_x86_64.tar.gz?alt=media"
      sha256 "555d2e25fa9c9cf355a1f6bb7654e01954df66e741292faac93027239746f03b"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.14%2Fjeff_0.3.14_Linux_arm64.tar.gz?alt=media"
      sha256 "170d9baa25129ed69bd8b8eb556284f01a2404217f4aeebc5da8f6237358aeee"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
