# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "AI-powered personal assistant for email, calendar, and tasks"
  homepage "https://jeff.2389.ai"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.5.0%2Fjeff_0.5.0_Darwin_x86_64.tar.gz?alt=media"
      sha256 "d6f69988cb7ff646bb38bc1e5ecc519eb68ca26b3c7068782b03ee161bc8ff38"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.5.0%2Fjeff_0.5.0_Darwin_arm64.tar.gz?alt=media"
      sha256 "d389f7042470b485623b712e43f04ac6b663251188464cfa99b668517c48b2ca"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.5.0%2Fjeff_0.5.0_Linux_x86_64.tar.gz?alt=media"
      sha256 "921aa32620a506d7ef9ce19f3e8fb38fa378b92819b25018d126808d5e60e0ba"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.5.0%2Fjeff_0.5.0_Linux_arm64.tar.gz?alt=media"
      sha256 "13ee11330d4569102619373fc9c240cd2db2c8ece4250286be2e2cc69ae3914e"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
