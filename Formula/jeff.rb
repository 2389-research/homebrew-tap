# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "AI-powered personal assistant for email, calendar, and tasks"
  homepage "https://jeff.2389.ai"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.7.0%2Fjeff_0.7.0_Darwin_x86_64.tar.gz?alt=media"
      sha256 "9d1f34a290bea80f01ea6a49f22c6bdd89fe5ee8538846b7d4718ae48c8a3705"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.7.0%2Fjeff_0.7.0_Darwin_arm64.tar.gz?alt=media"
      sha256 "45f11826cff15d943be39d219c30c9206d6ce0ce4679548a0f8eb8a0ff2ae336"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.7.0%2Fjeff_0.7.0_Linux_x86_64.tar.gz?alt=media"
      sha256 "0641eca15f7d99272c463ae9b6503f9b50fa6640aaae4fdea398e03a77e500ca"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.7.0%2Fjeff_0.7.0_Linux_arm64.tar.gz?alt=media"
      sha256 "fa5292f0a9e86c996e42ed2e7a1fcaa01c81c33cca7b20200ed5e64c949847eb"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
