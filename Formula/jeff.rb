# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "CLI implementation of Claude Code with interactive TUI"
  homepage "https://github.com/2389-research/jeff"
  version "0.1.9"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.1.9%2Fjeff_0.1.9_Darwin_x86_64.tar.gz?alt=media"
      sha256 "46734b8b1ccea926adb5ce77e85b73954d7559207b2081822938c0bf39990192"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.1.9%2Fjeff_0.1.9_Darwin_arm64.tar.gz?alt=media"
      sha256 "84ed5e8f81552bd036a137a754586729546f8f2720db4a2b8eb9818c4c3a974b"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.1.9%2Fjeff_0.1.9_Linux_x86_64.tar.gz?alt=media"
      sha256 "ef44cb66315f0ea94c8ad362ddac2796b42063dbe99e280680a319dac207e1d3"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.1.9%2Fjeff_0.1.9_Linux_arm64.tar.gz?alt=media"
      sha256 "b783991c1db99897595e97f78c09e05db38edaefd3c9814f3165eaaec31527db"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
