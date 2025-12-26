# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "CLI implementation of Claude Code with interactive TUI"
  homepage "https://github.com/2389-research/jeff"
  version "0.3.11"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.11%2Fjeff_0.3.11_Darwin_x86_64.tar.gz?alt=media"
      sha256 "d464983980f45c1e403950a21d7ec78a3a9f2525423c396f8f395b99199157b0"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.11%2Fjeff_0.3.11_Darwin_arm64.tar.gz?alt=media"
      sha256 "4691affb2ac4a8d0f31690ea755bc6212b4b0218f0d281fc961bf37747c10252"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.11%2Fjeff_0.3.11_Linux_x86_64.tar.gz?alt=media"
      sha256 "1f8f000ae2bb44b8437d82d83d9655f870be3405db39177c0c3f79e68f087c18"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.3.11%2Fjeff_0.3.11_Linux_arm64.tar.gz?alt=media"
      sha256 "d344f235ee9f9bb18a3e15e9c7ca25aabaf64811e689ef1fd6c683475af2ca4b"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
