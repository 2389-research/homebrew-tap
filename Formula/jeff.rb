# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "CLI implementation of Claude Code with interactive TUI"
  homepage "https://github.com/2389-research/jeff"
  version "0.3.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.6%2Fjeff_0.3.6_Darwin_x86_64.tar.gz?alt=media"
      sha256 "4a11a664fb8d34dc358bba87bdee1ef0cd1d200b75683427b578bef5bb89ccac"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.6%2Fjeff_0.3.6_Darwin_arm64.tar.gz?alt=media"
      sha256 "8451f2d948b59952d933902b0fbb268fb507143c6dd57a8c7b1554c8bf760c91"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.6%2Fjeff_0.3.6_Linux_x86_64.tar.gz?alt=media"
      sha256 "b26cf4d8c3baa42bdda116c2049a540cc5bcf41c68dd60817a614f1521a3411e"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.6%2Fjeff_0.3.6_Linux_arm64.tar.gz?alt=media"
      sha256 "33af4be6a3ac7b308eff63906cb25866eac86448743b88e316cbaf95c14cca4c"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
