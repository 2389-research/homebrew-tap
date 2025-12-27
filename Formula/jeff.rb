# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "CLI implementation of Claude Code with interactive TUI"
  homepage "https://github.com/2389-research/jeff"
  version "0.3.13"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.13%2Fjeff_0.3.13_Darwin_x86_64.tar.gz?alt=media"
      sha256 "8685e812ff3f08a9d91368d5118dcf20b6233e7872b05835d4f1f7c1bb70bb4c"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.13%2Fjeff_0.3.13_Darwin_arm64.tar.gz?alt=media"
      sha256 "f21b667a5537ef0017cdc00c8012edcc712f84c15b6aed063f1e214dc124228c"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.13%2Fjeff_0.3.13_Linux_x86_64.tar.gz?alt=media"
      sha256 "dbac9a78c5b771099bd68c9b4f74390e6790641da44b36f7e7b48147ef0bedab"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.13%2Fjeff_0.3.13_Linux_arm64.tar.gz?alt=media"
      sha256 "8a18e7a1dda28a6aa3ff775a1787f6c657217ba70ea7658e780886bcada16cbd"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
