# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "CLI implementation of Claude Code with interactive TUI"
  homepage "https://github.com/2389-research/jeff"
  version "0.3.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.8%2Fjeff_0.3.8_Darwin_x86_64.tar.gz?alt=media"
      sha256 "e59f1ab89a316e6fee1de4ecae66913e38ed82350868fde381a778f5dd86799d"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.8%2Fjeff_0.3.8_Darwin_arm64.tar.gz?alt=media"
      sha256 "af3745e4a5ba62d8d696973765927223fdd82afb7cd725fc0b687986a72b5488"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.8%2Fjeff_0.3.8_Linux_x86_64.tar.gz?alt=media"
      sha256 "13bb6958352fd399d890d8617249b5fa039beed1ce1fae634a1abe05079fcd62"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.8%2Fjeff_0.3.8_Linux_arm64.tar.gz?alt=media"
      sha256 "89261afe1130590c10af71bfcc421325390bc912a239884abbafa1f32d7c211a"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
