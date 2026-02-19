# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "AI-powered personal assistant for email, calendar, and tasks"
  homepage "https://jeff.2389.ai"
  version "0.4.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.4.3%2Fjeff_0.4.3_Darwin_x86_64.tar.gz?alt=media"
      sha256 "5f6e3221245d654430898ea64027ce0bf172e3e4180d185886fbe98ac292ef2d"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.4.3%2Fjeff_0.4.3_Darwin_arm64.tar.gz?alt=media"
      sha256 "7a65bc33a514b690af5937dede5e2372ca29e15c39f6d5030f067834f3ab9982"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.4.3%2Fjeff_0.4.3_Linux_x86_64.tar.gz?alt=media"
      sha256 "b38f1902340a1e8c2b959d118f86243277293c6b06aba5bd4fe90c8a0163779d"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.4.3%2Fjeff_0.4.3_Linux_arm64.tar.gz?alt=media"
      sha256 "62bf8261e48dededf3154fcb88c7fe1ed1b479bf31a9bd8eba428050ae7c7869"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
