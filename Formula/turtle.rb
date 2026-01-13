# typed: false
# frozen_string_literal: true

class Turtle < Formula
  desc "Duolingo-style terminal and tmux command trainer"
  homepage "https://github.com/2389-research/turtle"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/2389-research/turtle/releases/download/v0.1.1/turtle-darwin-amd64.tar.gz"
      sha256 "6abfa8943527fab7c4c9678b1c998b7794d996199466d565a3d4d4f89b175510"

      def install
        bin.install "turtle"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/2389-research/turtle/releases/download/v0.1.1/turtle-darwin-arm64.tar.gz"
      sha256 "d1c65c0e62c05ea361ac7f64f1a157a29e37ab915079cfc35d5cd13d60361369"

      def install
        bin.install "turtle"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/2389-research/turtle/releases/download/v0.1.1/turtle-linux-amd64.tar.gz"
      sha256 "e6a29c73672644be93a39140b18e043cb6e92a41928d8f81b735300240fa045a"
      def install
        bin.install "turtle"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/2389-research/turtle/releases/download/v0.1.1/turtle-linux-arm64.tar.gz"
      sha256 "4e17ea875eab575bcf0035474590da76beaf594ec79aaecf57dcbe6ac2ac77cf"
      def install
        bin.install "turtle"
      end
    end
  end

  test do
    system "#{bin}/turtle", "--help"
  end
end
