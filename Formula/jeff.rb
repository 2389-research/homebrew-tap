# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "CLI implementation of Claude Code with interactive TUI"
  homepage "https://github.com/2389-research/jeff"
  version "0.3.12"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.12%2Fjeff_0.3.12_Darwin_x86_64.tar.gz?alt=media"
      sha256 "0ef66e35c73063542fe7e568f11f5a7db5e28819d1072ebd4ebe935112b2db99"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.12%2Fjeff_0.3.12_Darwin_arm64.tar.gz?alt=media"
      sha256 "383faf42a623f9f827bb910ea724b0d0e2353886ff0a873795432c2e38584139"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.12%2Fjeff_0.3.12_Linux_x86_64.tar.gz?alt=media"
      sha256 "11d5fcd6e6f9aea67dca48a8eaade9846f6153590535e9ff7fc32fa03ee93bb8"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.12%2Fjeff_0.3.12_Linux_arm64.tar.gz?alt=media"
      sha256 "421b1d5ae28f1cbca354c92a51c2a29a2447078a0f6e0465f5d19649c942e9b6"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
