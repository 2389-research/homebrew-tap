# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "AI-powered personal assistant for email, calendar, and tasks"
  homepage "https://jeff.2389.ai"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.6.0%2Fjeff_0.6.0_Darwin_x86_64.tar.gz?alt=media"
      sha256 "3f91be05a8801dcf5565a04894e5fa4224444c1539b7325b6d8eb2ed1b3ba307"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.6.0%2Fjeff_0.6.0_Darwin_arm64.tar.gz?alt=media"
      sha256 "1e614ebf1b1767a028058367c56293edca0a1e8dad1e856d62d95e1ca5ea7f52"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.6.0%2Fjeff_0.6.0_Linux_x86_64.tar.gz?alt=media"
      sha256 "7acc38151b5b60a7efb12b2f748c1aea0a92b3c753fcdd23bf876ee7aad9b707"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.6.0%2Fjeff_0.6.0_Linux_arm64.tar.gz?alt=media"
      sha256 "94cc204a7c46b30fc12f68bb577a7c52cb9b7d11b1ecf2dfc68b2dd8998b9136"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
