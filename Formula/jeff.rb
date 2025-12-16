# typed: false
# frozen_string_literal: true

class Jeff < Formula
  desc "CLI implementation of Claude Code with interactive TUI"
  homepage "https://github.com/2389-research/jeff"
  version "0.1.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.1.8%2Fjeff_0.1.8_Darwin_x86_64.tar.gz?alt=media"
      sha256 "f4c4dbcf6cc1421a9baf680b91b4e7583d54f6bca3a3a9c14e1bb28445b251b5"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.1.8%2Fjeff_0.1.8_Darwin_arm64.tar.gz?alt=media"
      sha256 "6270cc3ee71903fbeead9a75d06c07f44b641ef4a297848c9139823b8551bc3f"
      def install
        bin.install "jeff"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.1.8%2Fjeff_0.1.8_Linux_x86_64.tar.gz?alt=media"
      sha256 "05572d9acb3ff7b038f0384add97bf5d0b4b8e94945c6c8866c6c63849db15e8"
      def install
        bin.install "jeff"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://firebasestorage.googleapis.com/v0/b/jeff-pa-agent.firebasestorage.app/o/releases%2Fv0.1.8%2Fjeff_0.1.8_Linux_arm64.tar.gz?alt=media"
      sha256 "01cdf36bc621d435667d57c35569845d83d56748d7c7973c8dac572f32ed0728"
      def install
        bin.install "jeff"
      end
    end
  end

  test do
    system "#{bin}/jeff", "--help"
  end
end
