# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "CLI implementation of Claude Code with interactive TUI"
  homepage "https://github.com/2389-research/jeff"
  version "0.3.20"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.20%2Fjeff_0.3.20_Darwin_x86_64.tar.gz?alt=media"
      sha256 "70772a7159c5b4535f66a4112823d26b26ef279b3d81bda147e2b0057eb353ef"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.20%2Fjeff_0.3.20_Darwin_arm64.tar.gz?alt=media"
      sha256 "5d4570901cb5d54c6fd15990a766ed72eec16b840b052ea1182fe3ae118b03c3"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.20%2Fjeff_0.3.20_Linux_x86_64.tar.gz?alt=media"
      sha256 "d473185640969d34f2ee8efc9499ce4966431d6ddafb5ad98c88f544349607f2"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.20%2Fjeff_0.3.20_Linux_arm64.tar.gz?alt=media"
      sha256 "68eec2e5392afd01c19d7932b0701d258730b22affe63ea00f5f298c62fa6255"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
