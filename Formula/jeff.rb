# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "AI-powered personal assistant for email, calendar, and tasks"
  homepage "https://jeff.2389.ai"
  version "0.4.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.4.2%2Fjeff_0.4.2_Darwin_x86_64.tar.gz?alt=media"
      sha256 "a44c9a9b22287036521f51cdb4c2d97b76fa71320a5da49660f16ce6320fea2b"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.4.2%2Fjeff_0.4.2_Darwin_arm64.tar.gz?alt=media"
      sha256 "eef2509379eeee4c233740d0170b3392816bb8d0a43c791eb42d513a7b81599a"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.4.2%2Fjeff_0.4.2_Linux_x86_64.tar.gz?alt=media"
      sha256 "12d51d173a117cc1dea2e4cead8d326a22781efb3951ab7d14c9933945b2eddf"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.4.2%2Fjeff_0.4.2_Linux_arm64.tar.gz?alt=media"
      sha256 "14d94b5409051462fff343b67e06a3551f076256cb9ab673a6fe7eb815f66e83"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
