# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "CLI implementation of Claude Code with interactive TUI"
  homepage "https://github.com/2389-research/jeff"
  version "0.3.19"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.19%2Fjeff_0.3.19_Darwin_x86_64.tar.gz?alt=media"
      sha256 "7fa34bb0aaf369a8bba7346d48aa288fee9a716843dc02c6dd1342f0fc2fccbd"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.19%2Fjeff_0.3.19_Darwin_arm64.tar.gz?alt=media"
      sha256 "a55c8f010c47006449fdd3ae9663429f5058a0cad2daeb7eae09d371606d681a"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.19%2Fjeff_0.3.19_Linux_x86_64.tar.gz?alt=media"
      sha256 "a3438491934ab88f2aca1612000d7436ed168410a1bc6c459daa55f6df644d6f"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.19%2Fjeff_0.3.19_Linux_arm64.tar.gz?alt=media"
      sha256 "f99902ca5b4cb2ff51550a2f7a7f34cd74798da1b135235a4e5c5870efe507a7"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
