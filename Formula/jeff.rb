# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "CLI implementation of Claude Code with interactive TUI"
  homepage "https://github.com/2389-research/jeff"
  version "0.3.18"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.18%2Fjeff_0.3.18_Darwin_x86_64.tar.gz?alt=media"
      sha256 "9cbc64aae2cc38734d3ba58fe1f9717a04893dbc1c6c30427d029adb5b1f949f"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.18%2Fjeff_0.3.18_Darwin_arm64.tar.gz?alt=media"
      sha256 "e775218b9d7f24548d8817ed46a69f3270425615f49363a66171b48e844ad57d"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.18%2Fjeff_0.3.18_Linux_x86_64.tar.gz?alt=media"
      sha256 "a21b24fc052c05f056b9b27c0a28a4ffdfe07b42e16b676a157302117c6ac1d4"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.18%2Fjeff_0.3.18_Linux_arm64.tar.gz?alt=media"
      sha256 "2f20824a9f95694445011414b24c203cb62a8c72ed29d94005c085d6b44aeacc"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
